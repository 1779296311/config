Vim�UnDo� �T����*�M�e68(�ݑ<�M0�K]�6���   -   1            if(root->val>minV && root->val<maxV){   #         R       R   R   R    ^��.    _�                             ����                                                                                                                                                                                                                                                                                                                                                             ^��t     �   	            �               �               �               �               �               �               �               �               �                  5�_�                    
        ����                                                                                                                                                                                                                                                                                                                                                             ^��u     �   
               �               �   
            5�_�                    
        ����                                                                                                                                                                                                                                                                                                                                                             ^��x     �   	   
          using  namespace  std;5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ^��y     �      
       �      	       5�_�                    	   
    ����                                                                                                                                                                                                                                                                                                                                                             ^��z     �      
         #include <iostream>5�_�                            ����                                                                                                                                                                                                                                                                                                                                                         ^���     �   
         	   /**   % * Definition for a binary tree node.    * struct TreeNode {    *     int val;    *     TreeNode *left;    *     TreeNode *right;   ; *     TreeNode(int x) : val(x), left(NULL), right(NULL) {}    * };    */5�_�                            ����                                                                                                                                                                                                                                                                                                                                                         ^���     �   
              5�_�      
                      ����                                                                                                                                                                                                                                                                                                                                                         ^���     �   
             "Definition for a binary tree node.5�_�         	       
          ����                                                                                                                                                                                                                                                                                                                                                         ^���    �                        5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                         ^���     �                       �             5�_�                       /    ����                                                                                                                                                                                                                                                                                                                                                         ^��     �                           �             �               /        if(root==nullptr || root==p || root==q)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                         ^��     �                       �             5�_�                       4    ����                                                                                                                                                                                                                                                                                                                                                         ^���     �               4        TreeNode* left = std::lowestCommonAncestor()5�_�                       3    ����                                                                                                                                                                                                                                                                                                                                                         ^���     �               5        TreeNode* left = std::lowestCommonAncestor();5�_�                       @    ����                                                                                                                                                                                                                                                                                                                                                         ^���     �             �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       ^���     �               C        TreeNode* left = std::lowestCommonAncestor(root->left,p,q);5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       ^���     �               C        TreeNode* left = std::lowestCommonAncestor(root->left,p,q);5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       ^���     �               >        TreeNode* left = lowestCommonAncestor(root->left,p,q);5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       ^���     �               >        TreeNode* left = lowestCommonAncestor(root->left,p,q);5�_�                       6    ����                                                                                                                                                                                                                                                                                                                                                v       ^���     �               ?        TreeNode* right = lowestCommonAncestor(root->left,p,q);5�_�                       5    ����                                                                                                                                                                                                                                                                                                                                                v       ^���    �               A        TreeNode* right = lowestCommonAncestor(root->lright,p,q);5�_�                       5    ����                                                                                                                                                                                                                                                                                                                                                v       ^���     �                       �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       ^���     �                           �             �                       if(left && right)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       ^���     �                       �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       ^��l     �                     �              5�_�                       "    ����                                                                                                                                                                                                                                                                                                                                                V       ^��{     �                 $    TreeNode* lowestCommonAncestor()5�_�                       )    ����                                                                                                                                                                                                                                                                                                                                                V       ^��~     �                 *    TreeNode* lowestCommonAncestorSerach()5�_�                       R    ����                                                                                                                                                                                                                                                                                                                                                V       ^��     �      !   "              �      !   !    �      !          R    TreeNode* lowestCommonAncestorSerach(TreeNode* root, TreeNode* p, TreeNode* q)5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       ^��     �       "   $                  �       "   #    �      "   "              while(root)5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       ^��     �      !   %              �      !   $    5�_�      !                       ����                                                                                                                                                                                                                                                                                                                                                V       ^��     �      !   %              p = p->val5�_�       "           !           ����                                                                                                                                                                                                                                                                                                                                                V       ^���     �      !   %              p = p->val>q->val?5�_�   !   #           "           ����                                                                                                                                                                                                                                                                                                                                                V       ^���     �      !   %              p = ()p->val>q->val?5�_�   "   $           #           ����                                                                                                                                                                                                                                                                                                                                                V       ^���     �      !   %              p = )p->val>q->val?5�_�   #   %           $           ����                                                                                                                                                                                                                                                                                                                                                V       ^���     �      !   %              p = p->val>q->val?5�_�   $   &           %           ����                                                                                                                                                                                                                                                                                                                                                V       ^���     �      !   %              p = p->val>q->val?()5�_�   %   '           &           ����                                                                                                                                                                                                                                                                                                                                                V       ^���     �      !   %              p = p->val>q->val?();5�_�   &   (           '           ����                                                                                                                                                                                                                                                                                                                                                V       ^���     �      !   %              p = p->val>q->val?():;5�_�   '   )           (           ����                                                                                                                                                                                                                                                                                                                                                V       ^���     �      !   %               p = p->val>q->val?({}):;5�_�   (   *           )           ����                                                                                                                                                                                                                                                                                                                                                V       ^���     �      !   %              p = p->valq->val?({}):;5�_�   )   +           *           ����                                                                                                                                                                                                                                                                                                                                                V       ^���     �      !   %               p = p->val<q->val?({}):;5�_�   *   ,           +           ����                                                                                                                                                                                                                                                                                                                                                V       ^��     �                 !        p = p->val<q->val?({}):p;5�_�   +   -           ,          ����                                                                                                                                                                                                                                                                                                                                                V       ^��     �      !   %              �      !   $    5�_�   ,   .           -           ����                                                                                                                                                                                                                                                                                                                                                V       ^��
     �      !   %              int minV = min()5�_�   -   /           .           ����                                                                                                                                                                                                                                                                                                                                                V       ^��     �      !   %              int minV = min();5�_�   .   0           /           ����                                                                                                                                                                                                                                                                                                                                                V       ^��     �      !   %      &        int minV = min(p->val,q->val);5�_�   /   1           0           ����                                                                                                                                                                                                                                                                                                                                                V       ^��     �       "   %    �       !   %    5�_�   0   2           1   !       ����                                                                                                                                                                                                                                                                                                                                                V       ^��     �       "   &      -        int minV = ::std::min(p->val,q->val);5�_�   1   3           2   !       ����                                                                                                                                                                                                                                                                                                                                                V       ^��     �       "   &      ,        int inV = ::std::min(p->val,q->val);5�_�   2   4           3   !       ����                                                                                                                                                                                                                                                                                                                                                V       ^��     �       "   &      +        int nV = ::std::min(p->val,q->val);5�_�   3   5           4   !       ����                                                                                                                                                                                                                                                                                                                                                V       ^��     �       "   &      *        int V = ::std::min(p->val,q->val);5�_�   4   6           5   !       ����                                                                                                                                                                                                                                                                                                                                                V       ^��     �       "   &      -        int maxV = ::std::min(p->val,q->val);5�_�   5   7           6   #       ����                                                                                                                                                                                                                                                                                                                                                V       ^��G     �   "   $   &                  if(root->val>p->)5�_�   6   8           7   #       ����                                                                                                                                                                                                                                                                                                                                                V       ^��G     �   "   $   &                  if(root->val>->)5�_�   7   9           8   #       ����                                                                                                                                                                                                                                                                                                                                                V       ^��I     �   "   $   &                  if(root->val>>)5�_�   8   :           9   #       ����                                                                                                                                                                                                                                                                                                                                                V       ^��J     �   "   $   &                  if(root->val>)5�_�   9   ;           :   #   0    ����                                                                                                                                                                                                                                                                                                                                                V       ^��S     �   #   %   (                      �   #   %   '    �   "   %   &      0            if(root->val>minV && root->val<maxV)5�_�   :   <           ;   %       ����                                                                                                                                                                                                                                                                                                                                                V       ^��X     �   $   &   (                  }5�_�   ;   =           <   %       ����                                                                                                                                                                                                                                                                                                                                                V       ^��d     �   $   &   (                  }else if(root->)5�_�   <   >           =   %   "    ����                                                                                                                                                                                                                                                                                                                                                V       ^��j     �   $   &   (      "            }else if(root->val<mi)5�_�   =   ?           >   %   "    ����                                                                                                                                                                                                                                                                                                                                                V       ^��l     �   $   &   (      $            }else if(root->val<mi)nV5�_�   >   @           ?   %   "    ����                                                                                                                                                                                                                                                                                                                                                V       ^��m     �   $   &   (      #            }else if(root->val<mi)V5�_�   ?   A           @   %   !    ����                                                                                                                                                                                                                                                                                                                                                V       ^��n     �   $   &   (      "            }else if(root->val<mi)5�_�   @   B           A   %   $    ����                                                                                                                                                                                                                                                                                                                                                V       ^��o     �   %   '   )    �   $   '   (      $            }else if(root->val<minV)5�_�   A   C           B   '       ����                                                                                                                                                                                                                                                                                                                                                V       ^��q     �   '   )   +    �   &   )   *                  }5�_�   B   D           C   (        ����                                                                                                                                                                                                                                                                                                                                                V       ^��s     �   '   (           5�_�   C   E           D   &        ����                                                                                                                                                                                                                                                                                                                                                V       ^��t     �   %   &           5�_�   D   F           E   %       ����                                                                                                                                                                                                                                                                                                                                                V       ^��t     �   %   '   +                      �   %   '   *    5�_�   E   G           F   &       ����                                                                                                                                                                                                                                                                                                                                                V       ^��{     �   %   '   +                      root->root->5�_�   F   H           G   &       ����                                                                                                                                                                                                                                                                                                                                                V       ^��{     �   %   '   +                      root>root->5�_�   G   I           H   &       ����                                                                                                                                                                                                                                                                                                                                                V       ^��|     �   %   '   +                      rootroot->5�_�   H   J           I   &       ����                                                                                                                                                                                                                                                                                                                                                V       ^��~     �   %   '   +                      root = root->5�_�   I   K           J   &       ����                                                                                                                                                                                                                                                                                                                                                V       ^��     �   %   '   +                      root = root->;5�_�   J   L           K   '       ����                                                                                                                                                                                                                                                                                                                                                V       ^��     �   '   )   ,                      �   '   )   +    5�_�   K   M           L   *       ����                                                                                                                                                                                                                                                                                                                                                V       ^��    �   *   ,   -              �   *   ,   ,    5�_�   L   N           M   &       ����                                                                                                                                                                                                                                                                                                                                                V       ^���     �   %   '   -      "                root = root->left;5�_�   M   O           N   (       ����                                                                                                                                                                                                                                                                                                                                                V       ^���    �   '   )   -      #                root = root->right;5�_�   N   P           O   #       ����                                                                                                                                                                                                                                                                                                                            +                      V        ^��(     �   "   $   -      1            if(root->val>minV && root->val<maxV){5�_�   O   Q           P   #       ����                                                                                                                                                                                                                                                                                                                            +                      V        ^��)     �   "   $   -      2            if(root->val>+minV && root->val<maxV){5�_�   P   R           Q   #       ����                                                                                                                                                                                                                                                                                                                            +                      V        ^��*     �   "   $   -      1            if(root->val>minV && root->val<maxV){5�_�   Q               R   #   ,    ����                                                                                                                                                                                                                                                                                                                            +                      V        ^��-    �   "   $   -      2            if(root->val>=minV && root->val<maxV){5�_�              
   	           ����                                                                                                                                                                                                                                                                                                                                                         ^���     �   
           5��