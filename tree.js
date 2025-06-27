class Node{
    constructor(data){
        this.data = data
        this.child = []
    }
}

root = new Node(1);


let child1 = new Node(2)
let child2 = new Node(3)
let child3 = new Node(4)
root.child.push(child1)  
root.child.push(child2)
root.child.push(child3)
let child5 = new Node(5)
let child6 = new Node(6)
child2.child.push(child5)
child2.child.push(child6)

function printTree(root){
    if (root === null){
        return
    }
    process.stdout.write(String(`${root.data}:`))
    for(let i=0;i<root.child.length;i++){
        process.stdout.write(String(`${root.child[i].data},`))
    }
    console.log();
    for(let i=0;i<root.child.length;i++){
        printTree(root.child[i])
    } 
}

printTree(root)