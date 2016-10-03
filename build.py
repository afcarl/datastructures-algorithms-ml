import os
import shutil

ML = [
    "Linear Regression",
    "Logistic Regression",
    "Decision Tree",
    "SVM",
    "Naive Bayes",
    "KNN",
    "K-Means",
    "Random Forest"]

CORE = [
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
    "Kth Largest Element",
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
    "Skip List",
    "Stack",
    "Topological Sort",
    "Treap",
    "Tree",
    "Trie",
    "Union-Find"]

def all():
    return sorted(CORE + ML)

def readme():
    """ Constructs the README.md index page linking to each topic"""
    tags = { 'Machine Learning': ML, 'Algorithms and Datastructures': CORE }
    txt = '# Regime\nSelf study and programming practice\n'
    for k,v in tags.iteritems():
        txt += '# %s\n' % k
        for item in v:
            txt += '* [%s](%s)\n' % (item, item)
        txt += "\n"
    with open ('README.md', 'w+') as f:
        f.write(txt)

def make_dirs():
    """ Build the directories if they don't exist """
    for directory in all():
        if not os.path.exists(directory):
            print("Creating directory %s" % directory)
            os.makedirs(directory)
            with open('%s/README.md' % directory,'w') as f:
                f.write("# %s\n" % directory)

def clean():
    """ Destructive clean of all code """
    for directory in all():
        if os.path.exists(directory):
            shutil.rmtree(directory)

def main():
    make_dirs()
    readme()

if __name__ == '__main__':
    main()
