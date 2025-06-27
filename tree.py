from collections import deque
class TreeNode:
    def __init__(self,data):
        self.data = data
        self.left = None
        self.right = None


def buildTree():
    data = int(input('Enter The Data Of Node'))
    if data == -1:
        return None
    root =  TreeNode(data)
    print(f'Enter the data of Left Node of {data}')
    root.left=buildTree()
    print(f'Enter the data of Right Node of {data}')
    root.right=buildTree()
    return root

def build_tree_level():
    data = int(input('Enter the Data for Root'))
    root = TreeNode(data)
    if data == -1:
        return
    queue = deque([root])
    while len(queue) !=0 :
        current_node = queue.popleft()
        data = int(input(f'Enter the data for Left node of {current_node.data}'))
        if data !=-1 :
            current_node.left = TreeNode(data)
            queue.append(current_node.left)
        data = int(input(f'Enter the data for Right node of {current_node.data}'))
        if data !=-1 :
            current_node.right = TreeNode(data)
            queue.append(current_node.right)    
    return root
    
def print_tree(root):
    if root == None :
        return
    print(f"{root.data}:", end=" ")
    if root.left :
        print(f'L->{root.left.data}',end=' ')
    else:
        print(None,end=" ")
    if root.right :
        print(f'L->{root.right.data}',end=" ")
    else:
        print(None,end=" ")
    print()
    print_tree(root.left)    
    print_tree(root.right)    
               
def print_tree_level(root):
    if root == None:
        return
    queue = deque([root])
    while len(queue) != 0:
        crnt_node = queue.popleft()
        print(f"{crnt_node.data}:",end=" ")
        if crnt_node.left :
            print(f'L->{crnt_node.left.data}',end=' ')
            queue.append(crnt_node.left)
        else:
            print(None,end=" ")
        if crnt_node.right :
            print(f'L->{crnt_node.right.data}',end=" ")
            queue.append(crnt_node.right)
        else:
            print(None,end=" ")
        print()
            

    
    
    #      4
    #    /   \
    #   6     8
    #  / \   /  
    # 9   7 3
root = build_tree_level()  

print_tree_level(root)







