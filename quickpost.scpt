FasdUAS 1.101.10   ��   ��    k             l     ��������  ��  ��        l     �� 	 
��   	 ( "  QuickPostAppDelegate.applescript    
 �   D     Q u i c k P o s t A p p D e l e g a t e . a p p l e s c r i p t      l     ��  ��       QuickPost     �        Q u i c k P o s t      l     ��������  ��  ��        l     ��  ��    , &  Created by Wade Armstrong on 7/2/11.     �   L     C r e a t e d   b y   W a d e   A r m s t r o n g   o n   7 / 2 / 1 1 .      l     ��  ��    ; 5  Copyright 2011 Wade Armstrong. All rights reserved.     �   j     C o p y r i g h t   2 0 1 1   W a d e   A r m s t r o n g .   A l l   r i g h t s   r e s e r v e d .      l     ��������  ��  ��         l     ��������  ��  ��      ! " ! l      �� # $��   #��
	 
	 AppleScriptTweet v1.0 ©2010 Jim Mitchell
	 http://jimmitchell.org/projects/applescripttweet/
	 
	 A quick, one off tweet poster, cobbled together from other sources found about the web.
	 
	 NOTE: This script requires installing the "twurl" rubygem -- a Twitter-friendly version of the Unix curl -- in order to operate properly.
	 Point your browser to <http://github.com/marcel/twurl/> and carefully follow the directions in the "Read Me" section.
	 
	 Please see the post on my site for more information: <http://jimmitchell.org/2010/09/20/applescripttweet-updated-for-use-with-twurl/>
	 
	 BE ADVISED: I will politely decline all support requests for installing/using twurl since it is not my code...
	 
	 This script is released under the Creative Commons GPL 2.0 license.
	 http://creativecommons.org/licenses/GPL/2.0/
	 
	 For best results, use with FastScripts by Red Sweater Software.
	 http://www.red-sweater.com/fastscripts/
	 
	     $ � % %f 
 	   
 	   A p p l e S c r i p t T w e e t   v 1 . 0   � � 2 0 1 0   J i m   M i t c h e l l 
 	   h t t p : / / j i m m i t c h e l l . o r g / p r o j e c t s / a p p l e s c r i p t t w e e t / 
 	   
 	   A   q u i c k ,   o n e   o f f   t w e e t   p o s t e r ,   c o b b l e d   t o g e t h e r   f r o m   o t h e r   s o u r c e s   f o u n d   a b o u t   t h e   w e b . 
 	   
 	   N O T E :   T h i s   s c r i p t   r e q u i r e s   i n s t a l l i n g   t h e   " t w u r l "   r u b y g e m   - -   a   T w i t t e r - f r i e n d l y   v e r s i o n   o f   t h e   U n i x   c u r l   - -   i n   o r d e r   t o   o p e r a t e   p r o p e r l y . 
 	   P o i n t   y o u r   b r o w s e r   t o   < h t t p : / / g i t h u b . c o m / m a r c e l / t w u r l / >   a n d   c a r e f u l l y   f o l l o w   t h e   d i r e c t i o n s   i n   t h e   " R e a d   M e "   s e c t i o n . 
 	   
 	   P l e a s e   s e e   t h e   p o s t   o n   m y   s i t e   f o r   m o r e   i n f o r m a t i o n :   < h t t p : / / j i m m i t c h e l l . o r g / 2 0 1 0 / 0 9 / 2 0 / a p p l e s c r i p t t w e e t - u p d a t e d - f o r - u s e - w i t h - t w u r l / > 
 	   
 	   B E   A D V I S E D :   I   w i l l   p o l i t e l y   d e c l i n e   a l l   s u p p o r t   r e q u e s t s   f o r   i n s t a l l i n g / u s i n g   t w u r l   s i n c e   i t   i s   n o t   m y   c o d e . . . 
 	   
 	   T h i s   s c r i p t   i s   r e l e a s e d   u n d e r   t h e   C r e a t i v e   C o m m o n s   G P L   2 . 0   l i c e n s e . 
 	   h t t p : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / G P L / 2 . 0 / 
 	   
 	   F o r   b e s t   r e s u l t s ,   u s e   w i t h   F a s t S c r i p t s   b y   R e d   S w e a t e r   S o f t w a r e . 
 	   h t t p : / / w w w . r e d - s w e a t e r . c o m / f a s t s c r i p t s / 
 	   
 	   "  & ' & l     �� ( )��   ( R L Set me to true if testing, false if not. For you that probably means false.    ) � * * �   S e t   m e   t o   t r u e   i f   t e s t i n g ,   f a l s e   i f   n o t .   F o r   y o u   t h a t   p r o b a b l y   m e a n s   f a l s e . '  + , + j     �� -�� 0 testing   - m     ��
�� boovfals ,  . / . l     ��������  ��  ��   /  0 1 0 l     �� 2 3��   2 < 6 This is where you set up the basics of your post tool    3 � 4 4 l   T h i s   i s   w h e r e   y o u   s e t   u p   t h e   b a s i c s   o f   y o u r   p o s t   t o o l 1  5 6 5 l      7 8 9 7 j    �� :�� 0 
theaccount 
theAccount : m     ; ; � < <  j r b i r d 8 b \ this is your default, fallback account; if you screw up, your message might get posted here    9 � = = �   t h i s   i s   y o u r   d e f a u l t ,   f a l l b a c k   a c c o u n t ;   i f   y o u   s c r e w   u p ,   y o u r   m e s s a g e   m i g h t   g e t   p o s t e d   h e r e 6  > ? > l      @ A B @ j    �� C�� 0 theapp theApp C m     D D � E E   j r b i r d _ q u i c k p o s t A \ V this should be the same name as what you registered with http://dev.twitter.com/apps/    B � F F �   t h i s   s h o u l d   b e   t h e   s a m e   n a m e   a s   w h a t   y o u   r e g i s t e r e d   w i t h   h t t p : / / d e v . t w i t t e r . c o m / a p p s / ?  G H G l      I J K I j   	 �� L�� &0 thedefaultmessage theDefaultMessage L m   	 
 M M � N N   J ( " default value when script is run.    K � O O D   d e f a u l t   v a l u e   w h e n   s c r i p t   i s   r u n . H  P Q P l     ��������  ��  ��   Q  R S R l     �� T U��   T } w give it a list of your accounts to choose from, and pick a 1 (or more, no spaces)-letter account code to go with each!    U � V V �   g i v e   i t   a   l i s t   o f   y o u r   a c c o u n t s   t o   c h o o s e   f r o m ,   a n d   p i c k   a   1   ( o r   m o r e ,   n o   s p a c e s ) - l e t t e r   a c c o u n t   c o d e   t o   g o   w i t h   e a c h ! S  W X W j    !�� Y�� 0 
myaccounts 
myAccounts Y J      Z Z  [ \ [ l 	   ]���� ] K     ^ ^ �� _ `�� 0 code   _ m     a a � b b  j ` �� c���� 0 account   c m     d d � e e  j r b i r d��  ��  ��   \  f g f l 	   h���� h K     i i �� j k�� 0 code   j m     l l � m m  p k �� n���� 0 account   n m     o o � p p  p r o j e c t l i f t o f f��  ��  ��   g  q�� q l 	   r���� r l 
   s���� s K     t t �� u v�� 0 code   u m     w w � x x  f v �� y���� 0 account   y m     z z � { { ( t e s t f a i l p l e a s e t h a n k s��  ��  ��  ��  ��  ��   X  | } | i   " % ~  ~ I      �� ����� 0 handle_string   �  ��� � o      ���� 0 s  ��  ��    k     � � �  � � � l     �� � ���   � - ' input format: account code[space]tweet    � � � � N   i n p u t   f o r m a t :   a c c o u n t   c o d e [ s p a c e ] t w e e t �  � � � I     �� ����� 0 	growltest 	growlTest �  ��� � m     � � � � �  s t a r t e d��  ��   �  � � � l   ��������  ��  ��   �  � � � l   �� � ���   � 5 / first, set up Growl notifications if it exists    � � � � ^   f i r s t ,   s e t   u p   G r o w l   n o t i f i c a t i o n s   i f   i t   e x i s t s �  � � � I    �������� 0 growlregister growlRegister��  ��   �  � � � l   ��������  ��  ��   �  � � � l   �� � ���   � ? 9 Now parse the input to know which twitter account to use    � � � � r   N o w   p a r s e   t h e   i n p u t   t o   k n o w   w h i c h   t w i t t e r   a c c o u n t   t o   u s e �  � � � r     � � � n     � � � 4   �� �
�� 
cwor � m    ����  � o    ���� 0 s   � o      ���� 0 acctcode acctCode �  � � � l   ��������  ��  ��   �  � � � I    �� ����� 0 	growltest 	growlTest �  ��� � o    ���� 0 acctcode acctCode��  ��   �  � � � l   ��������  ��  ��   �  � � � r     � � � m    ��
�� boovfals � o      ���� 	0 found   �  � � � r    " � � � m     ����  � o      ���� 0 n   �  � � � l  # #��������  ��  ��   �  � � � V   # Y � � � Z   : T � ��� � � =   : F � � � n   : D � � � o   B D���� 0 code   � l  : B ����� � n   : B � � � 4   ? B�� �
�� 
cobj � o   @ A���� 0 n   � o   : ?���� 0 
myaccounts 
myAccounts��  ��   � o   D E���� 0 acctcode acctCode � r   I L � � � m   I J��
�� boovtrue � o      ���� 	0 found  ��   � r   O T � � � [   O R � � � o   O P���� 0 n   � m   P Q����  � o      ���� 0 n   � F   ' 9 � � � H   ' ) � � o   ' (���� 	0 found   � B   , 7 � � � o   , -���� 0 n   � l  - 6 ����� � I  - 6�� ���
�� .corecnte****       **** � o   - 2���� 0 
myaccounts 
myAccounts��  ��  ��   �  � � � l  Z Z��������  ��  ��   �  � � � Z   Z } � ��� � � H   Z \ � � o   Z [���� 	0 found   � r   _ j � � � o   _ d���� 0 
theaccount 
theAccount � o      ���� 0 
theaccount 
theAccount��   � r   m } � � � n   m w � � � o   u w���� 0 account   � l  m u ����� � n   m u � � � 4   r u�� �
�� 
cobj � o   s t���� 0 n   � o   m r���� 0 
myaccounts 
myAccounts��  ��   � o      ���� 0 
theaccount 
theAccount �  � � � l  ~ ~��������  ��  ��   �  � � � l  ~ ~��~�}�  �~  �}   �  � � � l  ~ ~�| � ��|   �   Switch to that account    � � � � .   S w i t c h   t o   t h a t   a c c o u n t �  � � � I   ~ ��{ ��z�{ 0 switchaccount switchAccount �  ��y � o    ��x�x 0 
theaccount 
theAccount�y  �z   �  � � � l  � ��w�v�u�w  �v  �u   �  � � � I   � ��t ��s�t 0 	growltest 	growlTest �  ��r � m   � � � � � � �  a c c o u n t   s e t�r  �s   �  � � � l  � ��q�p�o�q  �p  �o   �  � � � l  � ��n � ��n   �   Post your message    � �   $   P o s t   y o u r   m e s s a g e �  r   � � I   � ��m�l�m 0 	parsepost 	parsePost  o   � ��k�k 0 s   �j o   � ��i�i 0 acctcode acctCode�j  �l   o      �h�h 0 thetweet theTweet 	
	 l  � ��g�f�e�g  �f  �e  
  I   � ��d�c�d 0 	growltest 	growlTest �b o   � ��a�a 0 thetweet theTweet�b  �c    l  � ��`�_�^�`  �_  �^    l  � ��]�]   � � check to make sure the length of the message fits in 140 characters. if not, give a chance to edit it as many times as necessary.    �   c h e c k   t o   m a k e   s u r e   t h e   l e n g t h   o f   t h e   m e s s a g e   f i t s   i n   1 4 0   c h a r a c t e r s .   i f   n o t ,   g i v e   a   c h a n c e   t o   e d i t   i t   a s   m a n y   t i m e s   a s   n e c e s s a r y .  l  � ��\�\   s m we don't throw a dialog unless we fall into the check length problem; checkLength actually posts the message    � �   w e   d o n ' t   t h r o w   a   d i a l o g   u n l e s s   w e   f a l l   i n t o   t h e   c h e c k   l e n g t h   p r o b l e m ;   c h e c k L e n g t h   a c t u a l l y   p o s t s   t h e   m e s s a g e  I   � ��[�Z�[ 0 checklength checkLength �Y o   � ��X�X 0 thetweet theTweet�Y  �Z   �W l  � ��V�U�T�V  �U  �T  �W   }  !  l     �S�R�Q�S  �R  �Q  ! "#" l      �P$%�P  $   ___ Sub-Routines ___    % �&& ,   _ _ _   S u b - R o u t i n e s   _ _ _  # '(' l     �O�N�M�O  �N  �M  ( )*) l      �L+,�L  +ZT Loops through an array and finds what you're looking for.
	 Call with set Variable to LoopThrough(
	 the array you're looking in,
	 the key value you're looking for,
	 what element that key's in,
	 what element the value -- what you'd like to return -- matched to that key is in,
	 a default value to return if it can't find the key
	 )
	    , �--�   L o o p s   t h r o u g h   a n   a r r a y   a n d   f i n d s   w h a t   y o u ' r e   l o o k i n g   f o r . 
 	   C a l l   w i t h   s e t   V a r i a b l e   t o   L o o p T h r o u g h ( 
 	   t h e   a r r a y   y o u ' r e   l o o k i n g   i n , 
 	   t h e   k e y   v a l u e   y o u ' r e   l o o k i n g   f o r , 
 	   w h a t   e l e m e n t   t h a t   k e y ' s   i n , 
 	   w h a t   e l e m e n t   t h e   v a l u e   - -   w h a t   y o u ' d   l i k e   t o   r e t u r n   - -   m a t c h e d   t o   t h a t   k e y   i s   i n , 
 	   a   d e f a u l t   v a l u e   t o   r e t u r n   i f   i t   c a n ' t   f i n d   t h e   k e y 
 	   ) 
 	  * ./. l     �K�J�I�K  �J  �I  / 010 l     �H23�H  2 !  Switches accounts in twurl   3 �44 6   S w i t c h e s   a c c o u n t s   i n   t w u r l1 565 i   & )787 I      �G9�F�G 0 switchaccount switchAccount9 :�E: o      �D�D 0 account  �E  �F  8 k     9;; <=< r     >?> b     @A@ m     BB �CC $ t w u r l   s e t   d e f a u l t  A o    �C�C 0 account  ? o      �B�B  0 twitteraccount TwitterAccount= DED l   �AFG�A  F we're checking for errors two ways -- the way the original author did, which I haven't been able to confirm actually works and then try/on error, which actually seems to work -- since this stuff depends on returns from a shell script that I don't fully understand   G �HH   w e ' r e   c h e c k i n g   f o r   e r r o r s   t w o   w a y s   - -   t h e   w a y   t h e   o r i g i n a l   a u t h o r   d i d ,   w h i c h   I   h a v e n ' t   b e e n   a b l e   t o   c o n f i r m   a c t u a l l y   w o r k s   a n d   t h e n   t r y / o n   e r r o r ,   w h i c h   a c t u a l l y   s e e m s   t o   w o r k   - -   s i n c e   t h i s   s t u f f   d e p e n d s   o n   r e t u r n s   f r o m   a   s h e l l   s c r i p t   t h a t   I   d o n ' t   f u l l y   u n d e r s t a n dE IJI Q    KLMK r   	 NON I  	 �@P�?
�@ .sysoexecTEXT���     TEXTP o   	 
�>�>  0 twitteraccount TwitterAccount�?  O o      �=�= "0 accountresponse AccountResponseL R      �<�;�:
�< .ascrerr ****      � ****�;  �:  M I    �9Q�8�9 0 growlnotify growlNotifyQ RSR m    TT �UU * T w i t t e r   A c c o u n t   E r r o rS V�7V m    WW �XX( T h a t   a c c o u n t   h a s   n o t   b e e n   a u t h e n t i c a t e d   f o r   u s e   w i t h   t w u r l   y e t .   T h i s   e r r o r   s h o u l d n ' t   h a p p e n   o n c e   s e t u p   i s   c o m p l e t e .   S o r r y ,   y o u r   t w e e t   h a s   b e e n   l o s t .�7  �8  J Y�6Y Z     9Z[�5\Z E     #]^] o     !�4�4 "0 accountresponse AccountResponse^ m   ! "__ �``  < e r r o r >[ I   & -�3a�2�3 0 growlnotify growlNotifya bcb m   ' (dd �ee * T w i t t e r   A c c o u n t   E r r o rc f�1f m   ( )gg �hh( T h a t   a c c o u n t   h a s   n o t   b e e n   a u t h e n t i c a t e d   f o r   u s e   w i t h   t w u r l   y e t .   T h i s   e r r o r   s h o u l d n ' t   h a p p e n   o n c e   s e t u p   i s   c o m p l e t e .   S o r r y ,   y o u r   t w e e t   h a s   b e e n   l o s t .�1  �2  �5  \ I   0 9�0i�/�0 0 growlnotify growlNotifyi jkj m   1 2ll �mm   A c c o u n t   S w i t c h e dk n�.n b   2 5opo m   2 3qq �rr   A c t i v e   A c c o u n t :  p o   3 4�-�- 0 account  �.  �/  �6  6 sts l     �,�+�*�,  �+  �*  t uvu l     �)wx�)  w 2 , Parses out the post from the entered string   x �yy X   P a r s e s   o u t   t h e   p o s t   f r o m   t h e   e n t e r e d   s t r i n gv z{z i   * -|}| I      �(~�'�( 0 	parsepost 	parsePost~ � o      �&�& 0 theentry theEntry� ��%� o      �$�$  0 theaccountcode theAccountCode�%  �'  } k     (�� ��� l     �#���#  � 6 0 the message is the tweet minus the account code   � ��� `   t h e   m e s s a g e   i s   t h e   t w e e t   m i n u s   t h e   a c c o u n t   c o d e� ��� r     	��� l    ��"�!� I    � ��
�  .corecnte****       ****� n     ��� 2   �
� 
cha � o     �� 0 theentry theEntry�  �"  �!  � o      ��  0 theentrylength theEntryLength� ��� r   
 ��� l  
 ���� [   
 ��� l  
 ���� I  
 ���
� .corecnte****       ****� n   
 ��� 2   �
� 
cha � o   
 ��  0 theaccountcode theAccountCode�  �  �  � m    �� �  �  � o      �� $0 theaccountlength theAccountLength� ��� r    %��� c    #��� l   !���� n    !��� 7  !���
� 
cha � o    �� $0 theaccountlength theAccountLength� o     ��  0 theentrylength theEntryLength� o    �� 0 theentry theEntry�  �  � m   ! "�
� 
TEXT� o      �
�
 0 theactualpost theActualPost� ��� l  & &�	���	  �  �  � ��� L   & (�� o   & '�� 0 theactualpost theActualPost�  { ��� l     ����  �  �  � ��� l     ����  � ^ X checks the length of the post, and keeps calling itself until the length is acceptable.   � ��� �   c h e c k s   t h e   l e n g t h   o f   t h e   p o s t ,   a n d   k e e p s   c a l l i n g   i t s e l f   u n t i l   t h e   l e n g t h   i s   a c c e p t a b l e .� ��� i   . 1��� I      � ����  0 checklength checkLength� ���� o      ���� 0 
themessage 
theMessage��  ��  � Z     v������ B    ��� n     ��� 1    ��
�� 
leng� o     ���� 0 
themessage 
theMessage� m    ���� �� I    ������� 0 	posttweet 	postTweet� ���� o   	 
���� 0 
themessage 
theMessage��  ��  ��  � k    v�� ��� I     ������� 0 growlnotify growlNotify� ��� m    �� ���  T w e e t   T o o   L o n g� ���� b    ��� b    ��� m    �� ���  Y o u r   t w e e t   i s  � l   ������ \    ��� l   ������ n    ��� 1    ��
�� 
leng� o    ���� 0 
themessage 
theMessage��  ��  � m    ���� ���  ��  � m    �� ��� *   c h a r a c t e r s   t o o   l o n g .��  ��  � ���� O   ! v��� k   % u�� ��� I  % *������
�� .miscactvnull��� ��� null��  ��  � ��� I  + A����
�� .sysodlogaskr        TEXT� m   + ,�� ���  P o s t   a   t w e e t :� ����
�� 
dtxt� o   - .���� 0 
themessage 
theMessage� ����
�� 
btns� J   / 3�� ��� m   / 0�� ���  C a n c e l� ���� m   0 1�� ���  O K��  � ����
�� 
cbtn� m   4 5���� � ����
�� 
dflt� m   6 7���� � �����
�� 
appr� m   8 ;�� ���  P o s t   t o   T w i t t e r��  � ���� Z   B u������ =  B M��� n   B I��� 1   E I��
�� 
bhit� 1   B E��
�� 
rslt� m   I L�� ���  O K� k   P `    r   P Y n   P W 1   S W��
�� 
ttxt l  P S���� 1   P S��
�� 
rslt��  ��   o      ���� 0 
themessage 
theMessage �� I   Z `��	���� 0 checklength checkLength	 
��
 o   [ \���� 0 
themessage 
theMessage��  ��  ��  ��  � k   c u  r   c j o   c h���� &0 thedefaultmessage theDefaultMessage o      ���� 0 
themessage 
theMessage �� R   k u����
�� .ascrerr ****      � ****��   ����
�� 
errn m   o r��������  ��  ��  �  f   ! "��  �  l     ��������  ��  ��    l     ����   2 , here's where we post to twitter via the API    � X   h e r e ' s   w h e r e   w e   p o s t   t o   t w i t t e r   v i a   t h e   A P I  i   2 5 I      ������ 0 	posttweet 	postTweet �� o      ���� 0 
themessage 
theMessage��  ��   k     I   !"! l     ��#$��  #   first set the account   $ �%% ,   f i r s t   s e t   t h e   a c c o u n t" &'& l     ��������  ��  ��  ' ()( l     ��*+��  *   now send the message   + �,, *   n o w   s e n d   t h e   m e s s a g e) -.- r     /0/ n     121 1    ��
�� 
strq2 l    3����3 b     454 b     	676 b     898 m     :: �;;  s o u r c e =9 o    ���� 0 theapp theApp7 m    << �==  & s t a t u s =5 o   	 
���� 0 
themessage 
theMessage��  ��  0 o      ���� 0 thetweet theTweet. >?> r    @A@ b    BCB b    DED m    FF �GG  t w u r l   - d  E o    ���� 0 thetweet theTweetC m    HH �II .   / 1 / s t a t u s e s / u p d a t e . x m lA o      ���� 0 twitterupdate TwitterUpdate? JKJ l   ��LM��  L we're checking for errors two ways -- the way the original author did, which I haven't been able to confirm actually works and then try/on error, which actually seems to work -- since this stuff depends on returns from a shell script that I don't fully understand   M �NN   w e ' r e   c h e c k i n g   f o r   e r r o r s   t w o   w a y s   - -   t h e   w a y   t h e   o r i g i n a l   a u t h o r   d i d ,   w h i c h   I   h a v e n ' t   b e e n   a b l e   t o   c o n f i r m   a c t u a l l y   w o r k s   a n d   t h e n   t r y / o n   e r r o r ,   w h i c h   a c t u a l l y   s e e m s   t o   w o r k   - -   s i n c e   t h i s   s t u f f   d e p e n d s   o n   r e t u r n s   f r o m   a   s h e l l   s c r i p t   t h a t   I   d o n ' t   f u l l y   u n d e r s t a n dK OPO Q    1QRSQ r    "TUT I    ��V��
�� .sysoexecTEXT���     TEXTV o    ���� 0 twitterupdate TwitterUpdate��  U o      ���� "0 twitterresponse TwitterResponseR R      ������
�� .ascrerr ****      � ****��  ��  S I   * 1��W���� 0 growlnotify growlNotifyW XYX m   + ,ZZ �[[ & E r r o r   P o s t i n g   T w e e tY \��\ m   , -]] �^^ � T w e e t   f a i l e d   t o   p o s t .   T w i t t e r   m i g h t   b e   e x p i e r i e n c i n g   d i f f i c u l t i e s .��  ��  P _��_ Z   2 I`a��b` E   2 5cdc o   2 3���� "0 twitterresponse TwitterResponsed m   3 4ee �ff  < e r r o r >a I   8 ?��g���� 0 growlnotify growlNotifyg hih m   9 :jj �kk & E r r o r   P o s t i n g   T w e e ti l��l m   : ;mm �nn � T w e e t   f a i l e d   t o   p o s t .   T w i t t e r   m i g h t   b e   e x p i e r i e n c i n g   d i f f i c u l t i e s .��  ��  ��  b I   B I��o���� 0 growlnotify growlNotifyo pqp m   C Drr �ss   T w e e t   S u c c e s s f u lq t��t o   D E���� 0 
themessage 
theMessage��  ��  ��   uvu l     ��������  ��  ��  v wxw l     ��yz��  y 4 . additional scripting for Growl notifications    z �{{ \   a d d i t i o n a l   s c r i p t i n g   f o r   G r o w l   n o t i f i c a t i o n s  x |}| w      ~~ k      �� ��� i   6 9��� I      �������� 0 growlregister growlRegister��  ��  � O     ��� I   �����
�� .registernull��� ��� null��  � ����
�� 
appl� o    ���� 0 theapp theApp� ����
�� 
anot� J    �� ���� m    �� ��� 
 A l e r t��  � ����
�� 
dnot� J    �� ���� m    �� ��� 
 A l e r t��  � �����
�� 
iapp� m    �� ���  G r o w l H e l p e r A p p��  � m     ��$                                                                                  GRRR  alis    �  Juarez                     ��KXH+   zWGrowlHelperApp.app                                              zY�n�u        ����  	                	Resources     �ڭ�      �o�     zW zU z:k:"j3�  XJuarez:Library: PreferencePanes: Growl.prefPane: Contents: Resources: GrowlHelperApp.app  &  G r o w l H e l p e r A p p . a p p    J u a r e z  LLibrary/PreferencePanes/Growl.prefPane/Contents/Resources/GrowlHelperApp.app  / ��  � ��� i   : =��� I      ������� 0 growlnotify growlNotify� ��� o      ���� 0 grrtitle grrTitle� ���� o      ����  0 grrdescription grrDescription��  ��  � O     ��� I   �����
�� .notifygrnull��� ��� null��  � ����
�� 
name� m    �� ��� 
 A l e r t� ����
�� 
titl� o    	���� 0 grrtitle grrTitle� ����
�� 
desc� o   
 ��  0 grrdescription grrDescription� �~��}
�~ 
appl� o    �|�| 0 theapp theApp�}  � m     ��$                                                                                  GRRR  alis    �  Juarez                     ��KXH+   zWGrowlHelperApp.app                                              zY�n�u        ����  	                	Resources     �ڭ�      �o�     zW zU z:k:"j3�  XJuarez:Library: PreferencePanes: Growl.prefPane: Contents: Resources: GrowlHelperApp.app  &  G r o w l H e l p e r A p p . a p p    J u a r e z  LLibrary/PreferencePanes/Growl.prefPane/Contents/Resources/GrowlHelperApp.app  / ��  � ��{� i   > A��� I      �z��y�z 0 	growltest 	growlTest� ��x� o      �w�w  0 grrdescription grrDescription�x  �y  � Z     $���v�u� =    ��� o     �t�t 0 testing  � m    �s
�s boovtrue� O   
  ��� I   �r�q�
�r .notifygrnull��� ��� null�q  � �p��
�p 
name� m    �� ��� 
 A l e r t� �o��
�o 
titl� m    �� ���  T r a c i n g . . .� �n��
�n 
desc� o    �m�m  0 grrdescription grrDescription� �l��k
�l 
appl� o    �j�j 0 theapp theApp�k  � m   
 ��$                                                                                  GRRR  alis    �  Juarez                     ��KXH+   zWGrowlHelperApp.app                                              zY�n�u        ����  	                	Resources     �ڭ�      �o�     zW zU z:k:"j3�  XJuarez:Library: PreferencePanes: Growl.prefPane: Contents: Resources: GrowlHelperApp.app  &  G r o w l H e l p e r A p p . a p p    J u a r e z  LLibrary/PreferencePanes/Growl.prefPane/Contents/Resources/GrowlHelperApp.app  / ��  �v  �u  �{  $                                                                                  GRRR  alis    �  Juarez                     ��KXH+   zWGrowlHelperApp.app                                              zY�n�u        ����  	                	Resources     �ڭ�      �o�     zW zU z:k:"j3�  XJuarez:Library: PreferencePanes: Growl.prefPane: Contents: Resources: GrowlHelperApp.app  &  G r o w l H e l p e r A p p . a p p    J u a r e z  LLibrary/PreferencePanes/Growl.prefPane/Contents/Resources/GrowlHelperApp.app  / ��  } ��i� l     �h�g�f�h  �g  �f  �i       �e��d ; D M����������e  � �c�b�a�`�_�^�]�\�[�Z�Y�X�W�c 0 testing  �b 0 
theaccount 
theAccount�a 0 theapp theApp�` &0 thedefaultmessage theDefaultMessage�_ 0 
myaccounts 
myAccounts�^ 0 handle_string  �] 0 switchaccount switchAccount�\ 0 	parsepost 	parsePost�[ 0 checklength checkLength�Z 0 	posttweet 	postTweet�Y 0 growlregister growlRegister�X 0 growlnotify growlNotify�W 0 	growltest 	growlTest
�d boovfals� �V��V �  ���� �U a��U 0 code  � �T d�S�T 0 account  �S  � �R l��R 0 code  � �Q o�P�Q 0 account  �P  � �O w��O 0 code  � �N z�M�N 0 account  �M  � �L �K�J���I�L 0 handle_string  �K �H��H �  �G�G 0 s  �J  � �F�E�D�C�B�F 0 s  �E 0 acctcode acctCode�D 	0 found  �C 0 n  �B 0 thetweet theTweet�  ��A�@�?�>�=�<�;�:�9 ��8�7�A 0 	growltest 	growlTest�@ 0 growlregister growlRegister
�? 
cwor
�> .corecnte****       ****
�= 
bool
�< 
cobj�; 0 code  �: 0 account  �9 0 switchaccount switchAccount�8 0 	parsepost 	parsePost�7 0 checklength checkLength�I �*�k+ O*j+ O��k/E�O*�k+ OfE�OkE�O 5h�	 �b  j �&b  �/�,�  eE�Y �kE�[OY��O� b  Ec  Y b  �/�,Ec  O*b  k+ 	O*�k+ O*��l+ E�O*�k+ O*�k+ OP� �68�5�4���3�6 0 switchaccount switchAccount�5 �2��2 �  �1�1 0 account  �4  � �0�/�.�0 0 account  �/  0 twitteraccount TwitterAccount�. "0 accountresponse AccountResponse� B�-�,�+TW�*_dglq
�- .sysoexecTEXT���     TEXT�,  �+  �* 0 growlnotify growlNotify�3 :�%E�O �j E�W X  *��l+ O�� *��l+ Y *��%l+ � �)}�(�'���&�) 0 	parsepost 	parsePost�( �%��% �  �$�#�$ 0 theentry theEntry�#  0 theaccountcode theAccountCode�'  � �"�!� ���" 0 theentry theEntry�!  0 theaccountcode theAccountCode�   0 theentrylength theEntryLength� $0 theaccountlength theAccountLength� 0 theactualpost theActualPost� ���
� 
cha 
� .corecnte****       ****
� 
TEXT�& )��-j E�O��-j lE�O�[�\[Z�\Z�2�&E�O�� �������� 0 checklength checkLength� ��� �  �� 0 
themessage 
theMessage�  � �� 0 
themessage 
theMessage� ����������������
��	��������
� 
leng� �� 0 	posttweet 	postTweet� 0 growlnotify growlNotify
� .miscactvnull��� ��� null
� 
dtxt
� 
btns
� 
cbtn
� 
dflt
�
 
appr�	 

� .sysodlogaskr        TEXT
� 
rslt
� 
bhit
� 
ttxt� 0 checklength checkLength
� 
errn���� w��,� *�k+ Y g*���,�%�%l+ O) R*j O�����lv�k�l�a a  O_ a ,a   _ a ,E�O*�k+ Y b  E�O)a a lhU� �� ������� 0 	posttweet 	postTweet�  ����� �  ���� 0 
themessage 
theMessage��  � ���������� 0 
themessage 
theMessage�� 0 thetweet theTweet�� 0 twitterupdate TwitterUpdate�� "0 twitterresponse TwitterResponse� :<��FH������Z]��ejmr
�� 
strq
�� .sysoexecTEXT���     TEXT��  ��  �� 0 growlnotify growlNotify�� J�b  %�%�%�,E�O�%�%E�O �j E�W X  *��l+ 
O�� *��l+ 
Y 	*�l+ 
� ������������� 0 growlregister growlRegister��  ��  �  � 
����������������
�� 
appl
�� 
anot
�� 
dnot
�� 
iapp�� 
�� .registernull��� ��� null�� � *�b  ��kv��kv��� 	U� ������������� 0 growlnotify growlNotify�� ����� �  ������ 0 grrtitle grrTitle��  0 grrdescription grrDescription��  � ������ 0 grrtitle grrTitle��  0 grrdescription grrDescription� ��������������
�� 
name
�� 
titl
�� 
desc
�� 
appl�� 
�� .notifygrnull��� ��� null�� � *�����b  � U� ������������� 0 	growltest 	growlTest�� ����� �  ����  0 grrdescription grrDescription��  � ����  0 grrdescription grrDescription� 	���������������
�� 
name
�� 
titl
�� 
desc
�� 
appl�� 
�� .notifygrnull��� ��� null�� %b   e  � *������b  � UY hascr  ��ޭ