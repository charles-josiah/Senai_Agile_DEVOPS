



echo "Nome da Rede: $1"
echo "Endereco IP: $2"
echo "Endereco IP Bridge: $3"
echo "Ederenco GW: $4"

read
echo "Criando a bridge:"
ip link add v-net-0 type bridge
ip link set dev v-net-0 up
ip addr add  $3 dev v-net-0

echo "Criando o netspace"
ip netns add $1
ip netns exec $1 ip link
ip link add veth-$1 type veth peer name veth-$1-br
ip link set veth-$1 netns $1
ip link set veth-$1-br master v-net-0
ip link set veth-$1-br up


ip -n $1 link set veth-$1  up
ip -n $1 addr add $2 dev veth-$1 

ip netns exec $1 ip route add default via $4  dev veth-$1


