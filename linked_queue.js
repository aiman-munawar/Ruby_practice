class Node{
    constructor(data){
        this.data = data;
        this.next = null;
    }
}

function Enqueue(front,data,rare){
    if (front === null){
        let newNode=new Node(data)
        front = newNode
        rare = newNode
    } else{
        newNode=new Node(data);
        rare.next = newNode
        rare=newNode
    }
    return {front,rare};
}

function Dequeue(front){
    if (front === null){
        print('Queue is empty')
    } else{
        Dequeue_element = front.data;
        front = front.next;
        return {front,Dequeue_element};
    }
}

function print_linked(front){
    let temp = front;
    while (temp!=null){
        console.log(temp.data);
        temp=temp.next;
    }
}

let front = null;
let rare = null;
({front,rare} = Enqueue(front,3,rare));
({front,rare} = Enqueue(front,4,rare));
({front,rare} = Enqueue(front,5,rare));
print_linked(front);
({front,Dequeue_element}=Dequeue(front));

console.log();
console.log();

print_linked(front)

// IsEmpty ===>
// peek ===>

    tree ,hash, graph , dp