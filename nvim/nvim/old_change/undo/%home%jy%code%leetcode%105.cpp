Vim�UnDo� �F�)�v����^d��b��w�6�Q����|   Z   F            return partition1(preorder,inorder,0,0,preorder.size()-1);      3      D       D   D   D    ^�k�    _�                     0       ����                                                                                                                                                                                                                                                                                                                                      $          V       ^�}�     �   /   1   K      ?        TreeNode* buildTree(vector<int>& pre, vector<int>& in){5�_�                           ����                                                                                                                                                                                                                                                                                                                                      $          V       ^�}�     �         K      I        TreeNode* buildTree(vector<int>& preorder, vector<int>& inorder){5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                      $          V       ^�}�     �         K    �         K    5�_�                       J    ����                                                                                                                                                                                                                                                                                                                                      %          V       ^�}�     �         L      J        TreeNode* buildTree2(vector<int>& preorder, vector<int>& inorder){5�_�                       J    ����                                                                                                                                                                                                                                                                                                                                      %          V       ^�}�     �         N                  �         M    �         L      K        TreeNode* buildTree2(vector<int>& preorder, vector<int>& inorder){}5�_�                           ����                                                                                                                                                                                                                                                                                                                                      '          V       ^�}�     �         N                  return partition1()5�_�                           ����                                                                                                                                                                                                                                                                                                                                      '          V       ^�}�     �         N                   return partition1();5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                      '          V       ^�~     �         O              �         N    5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                      (          V       ^�~
     �         P              �         O    5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                      )          V       ^�~     �         P              TreeNode* partition1()5�_�   
                    ]    ����                                                                                                                                                                                                                                                                                                                                      )          V       ^�~.     �         R                  �         Q    �         P      ]        TreeNode* partition1(vector<int>& pre, vector<int>& in, int root, int begin, int end)5�_�                           ����                                                                                                                                                                                                                                                                                                                                      +          V       ^�~5     �         T                      �         S    �         R                  if(begin >= end)5�_�                           ����                                                                                                                                                                                                                                                                                                                                      -          V       ^�~:     �         T                  if(begin >= end){5�_�                           ����                                                                                                                                                                                                                                                                                                                                      -          V       ^�~=    �         T                      return null;5�_�                           ����                                                                                                                                                                                                                                                                                                                                      -          V       ^�~@     �         U                  �         T    5�_�                           ����                                                                                                                                                                                                                                                                                                                                      .          V       ^�~w     �                            III5�_�                       /    ����                                                                                                                                                                                                                                                                                                                                      -          V       ^�~{     �         T      ?            return partition1(preorder,inorder,root,begin,end);5�_�                       1    ����                                                                                                                                                                                                                                                                                                                                      -          V       ^�~|     �         T      <            return partition1(preorder,inorder,0,begin,end);5�_�                       3    ����                                                                                                                                                                                                                                                                                                                                      -          V       ^�~~     �         T      8            return partition1(preorder,inorder,0,0,end);5�_�                       3    ����                                                                                                                                                                                                                                                                                                                                      -          V       ^�~�     �         T      5            return partition1(preorder,inorder,0,0,);5�_�                       B    ����                                                                                                                                                                                                                                                                                                                                      -          V       ^�~�    �         T      D            return partition1(preorder,inorder,0,0,preorder.size());5�_�                           ����                                                                                                                                                                                                                                                                                                                                      -          V       ^�~�     �         U                  �         T    5�_�                           ����                                                                                                                                                                                                                                                                                                                                      .          V       ^�~�     �         V                  �         U    5�_�                           ����                                                                                                                                                                                                                                                                                                                                       /          V       ^�~�     �         V                  while(pre[root])5�_�                           ����                                                                                                                                                                                                                                                                                                                                       /          V       ^�~�     �         V                  while(pre[root]!= )5�_�                           ����                                                                                                                                                                                                                                                                                                                                       /          V       ^�~�     �         V                  while(pre[root]!=)5�_�                           ����                                                                                                                                                                                                                                                                                                                                       /          V       ^�~�     �         V                  while(pre[root] !=)5�_�                       )    ����                                                                                                                                                                                                                                                                                                                                       /          V       ^�~�     �         V      )            while(pre[root] != in[index])5�_�                       1    ����                                                                                                                                                                                                                                                                                                                                       /          V       ^�~�     �         V      2            while(pre[root] != in[index]){++index}5�_�                       1    ����                                                                                                                                                                                                                                                                                                                                       /          V       ^�~�     �         V    5�_�                             ����                                                                                                                                                                                                                                                                                                                            !          0          V       ^�~�     �         W       5�_�      !                  +    ����                                                                                                                                                                                                                                                                                                                            !          0          V       ^�~�     �         W      +            TreeNode* head = new TreeNode()5�_�       "           !          ����                                                                                                                                                                                                                                                                                                                            !          0          V       ^�     �         W      J        TreeNode* buildTree2(vector<int>& preorder, vector<int>& inorder){5�_�   !   #           "      *    ����                                                                                                                                                                                                                                                                                                                            !          0          V       ^�      �         W      ,            TreeNode* head = new TreeNode();5�_�   "   $           #      1    ����                                                                                                                                                                                                                                                                                                                            !          0          V       ^�#     �          X                  �          W    5�_�   #   %           $      "    ����                                                                                                                                                                                                                                                                                                                            "          1          V       ^�0     �          X      $            head->left = partition()5�_�   $   &           %      %    ����                                                                                                                                                                                                                                                                                                                            "          1          V       ^�2     �          X      %            head->left = partition1()5�_�   %   '           &      %    ����                                                                                                                                                                                                                                                                                                                            "          1          V       ^�2     �      !   X    �          X    5�_�   &   (           '           ����                                                                                                                                                                                                                                                                                                                            #          2          V       ^�4     �      !   Y      &            head->left = partition1();5�_�   '   )           (           ����                                                                                                                                                                                                                                                                                                                            #          2          V       ^�6     �       "   Z                  �       "   Y    5�_�   (   *           )           ����                                                                                                                                                                                                                                                                                                                            $          3          V       ^�:     �      !          '            head->right = partition1();�                 &            head->left = partition1();5�_�   )   +           *      %    ����                                                                                                                                                                                                                                                                                                                            $          3          V       ^�>     �          Z      '            head->left  = partition1();5�_�   *   ,           +      )    ����                                                                                                                                                                                                                                                                                                                            $          3          V       ^�@     �          Z      +            head->left  = partition1(pre,);5�_�   +   -           ,       %    ����                                                                                                                                                                                                                                                                                                                            $          3          V       ^�B     �      !   Z      '            head->right = partition1();5�_�   ,   .           -       )    ����                                                                                                                                                                                                                                                                                                                            $          3          V       ^�C     �      !   Z      +            head->right = partition1(pre,);5�_�   -   /           .          ����                                                                                                                                                                                                                                                                                                                            $          3          V       ^��     �          Z      .            head->left  = partition1(pre,in,);5�_�   .   0           /          ����                                                                                                                                                                                                                                                                                                                            $          3          V       ^��     �          Z      2            head->left      = partition1(pre,in,);5�_�   /   1           0           ����                                                                                                                                                                                                                                                                                                                            $          3          V       ^��     �      !   Z      -            head->right = partition1(pre,in);5�_�   0   2           1           ����                                                                                                                                                                                                                                                                                                                            $          3          V       ^��    �      !   Z      1            head->right     = partition1(pre,in);5�_�   1   3           2      /    ����                                                                                                                                                                                                                                                                                                                            $          3          V       ^��[     �          Z      1            head->left     = partition1(pre,in,);5�_�   2   4           3       .    ����                                                                                                                                                                                                                                                                                                                            $          3          V       ^��`     �      !   Z      0            head->right    = partition1(pre,in);5�_�   3   5           4       /    ����                                                                                                                                                                                                                                                                                                                            $          3          V       ^��`     �      !   Z      1            head->right    = partition1(pre,in,);5�_�   4   6           5       3    ����                                                                                                                                                                                                                                                                                                                            $          3          V       ^��d     �      !   Z      5            head->right    = partition1(pre,in,root);5�_�   5   7           6       3    ����                                                                                                                                                                                                                                                                                                                            $          3          V       ^��e     �      !   Z      7            head->right    = partition1(pre,in,root=1);5�_�   6   8           7       3    ����                                                                                                                                                                                                                                                                                                                            $          3          V       ^��f     �      !   Z      6            head->right    = partition1(pre,in,root1);5�_�   7   9           8       5    ����                                                                                                                                                                                                                                                                                                                            $          3          V       ^��q     �      !   Z      7            head->right    = partition1(pre,in,root+1);5�_�   8   :           9      5    ����                                                                                                                                                                                                                                                                                                                            $          3          V       ^��v     �          Z      7            head->left     = partition1(pre,in,root+1);5�_�   9   ;           :      6    ����                                                                                                                                                                                                                                                                                                                            $          3          V       ^��|     �          Z      8            head->left     = partition1(pre,in,root+1,);5�_�   :   <           ;      <    ����                                                                                                                                                                                                                                                                                                                            $          3          V       ^��     �          Z      >            head->left     = partition1(pre,in,root+1,start,);5�_�   ;   =           <      6    ����                                                                                                                                                                                                                                                                                                                            $          3          V       ^���     �          Z      A            head->left     = partition1(pre,in,root+1,start,i-1);5�_�   <   >           =      =    ����                                                                                                                                                                                                                                                                                                                            $          3          V       ^���     �          Z      A            head->left     = partition1(pre,in,root+1,begin,i-1);5�_�   =   ?           >       7    ����                                                                                                                                                                                                                                                                                                                            $          3          V       ^���     �      !   Z      ?            head->right    = partition1(pre,in,root+1+i-start);5�_�   >   @           ?       <    ����                                                                                                                                                                                                                                                                                                                            $          3          V       ^���     �      !   Z      C            head->right    = partition1(pre,in,root+1+index-start);5�_�   ?   A           @       A    ����                                                                                                                                                                                                                                                                                                                            $          3          V       ^���     �      !   Z      C            head->right    = partition1(pre,in,root+1+index-begin);5�_�   @   B           A       B    ����                                                                                                                                                                                                                                                                                                                            $          3          V       ^���     �      !   Z      D            head->right    = partition1(pre,in,root+1+index-begin,);5�_�   A   C           B       J    ����                                                                                                                                                                                                                                                                                                                            $          3          V       ^���    �      !   Z      L            head->right    = partition1(pre,in,root+1+index-begin,index+1,);5�_�   B   D           C      3    ����                                                                                                                                                                                                                                                                                                                                                             ^�k�    �         Z      F            return partition1(preorder,inorder,0,0,preorder.size()-1);5�_�   C               D      5    ����                                                                                                                                                                                                                                                                                                                                                             ^�k�    �         Z      @            return partition1(preorder,inorder,0,0,in.size()-1);5��