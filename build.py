import os
import shutil

ALL= [
    "AVL Tree",
    "B-Tree",
    "Binary Search Tree",
    "Binary Search",
    "Binary Tree",
    "Bit Set",
    "Bloom Filter",
    "Breadth-First Search",
    "Bubble Sort",
    "Bucket Sort",
    "Comb Sort",
    "Counting Sort",
    "Depth-First Search",
    "Graph",
    "Hash Set",
    "Hash Table",
    "Heap Sort",
    "Heap",
    "Huffman Coding",
    "Insertion Sort",
    "K-Means",
    "Kth Largest Element",
    "Linear Regression",
    "Linear Search",
    "Linked List",
    "Longest Common Subsequence",
    "Merge Sort",
    "Priority Queue",
    "Queue",
    "Quicksort",
    "Radix Sort",
    "Radix Tree",
    "Red-Black Tree",
    "Ring Buffer",
    "Run-Length Encoding",
    "Segment Tree",
    "Selection Sort",
    "Shell Sort",
    "Skip List"
    "Stack",
    "Topological Sort",
    "Treap",
    "Tree",
    "Trie",
    "Union-Find"]

def make_dirs():
    for directory in ALL:
        if not os.path.exists(directory):
            print("Creating directory %s" % directory)
            os.makedirs(directory)
            with open('%s/README.md' % directory,'w') as f:
                f.write("# %s\n" % directory)

def clean():
    for directory in ALL:
        if os.path.exists(directory):
            shutil.rmtree(directory)

if __name__ == '__main__':
    clean()
    make_dirs()
