��U S E   [ m a s t e r ]  
 G O  
 / * * * * * *   O b j e c t :     D a t a b a s e   [ e s e n c i a l V e r d e ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 C R E A T E   D A T A B A S E   [ e s e n c i a l V e r d e ]  
   C O N T A I N M E N T   =   N O N E  
   O N     P R I M A R Y    
 (   N A M E   =   N ' e s e n c i a l V e r d e ' ,   F I L E N A M E   =   N ' C : \ P r o g r a m   F i l e s \ M i c r o s o f t   S Q L   S e r v e r \ M S S Q L 1 6 . M S S Q L S E R V E R \ M S S Q L \ D A T A \ e s e n c i a l V e r d e . m d f '   ,   S I Z E   =   7 3 7 2 8 K B   ,   M A X S I Z E   =   U N L I M I T E D ,   F I L E G R O W T H   =   6 5 5 3 6 K B   )  
   L O G   O N    
 (   N A M E   =   N ' e s e n c i a l V e r d e _ l o g ' ,   F I L E N A M E   =   N ' C : \ P r o g r a m   F i l e s \ M i c r o s o f t   S Q L   S e r v e r \ M S S Q L 1 6 . M S S Q L S E R V E R \ M S S Q L \ D A T A \ e s e n c i a l V e r d e _ l o g . l d f '   ,   S I Z E   =   7 3 7 2 8 K B   ,   M A X S I Z E   =   2 0 4 8 G B   ,   F I L E G R O W T H   =   6 5 5 3 6 K B   )  
   W I T H   C A T A L O G _ C O L L A T I O N   =   D A T A B A S E _ D E F A U L T ,   L E D G E R   =   O F F  
 G O  
 A L T E R   D A T A B A S E   [ e s e n c i a l V e r d e ]   S E T   C O M P A T I B I L I T Y _ L E V E L   =   1 6 0  
 G O  
 I F   ( 1   =   F U L L T E X T S E R V I C E P R O P E R T Y ( ' I s F u l l T e x t I n s t a l l e d ' ) )  
 b e g i n  
 E X E C   [ e s e n c i a l V e r d e ] . [ d b o ] . [ s p _ f u l l t e x t _ d a t a b a s e ]   @ a c t i o n   =   ' e n a b l e '  
 e n d  
 G O  
 A L T E R   D A T A B A S E   [ e s e n c i a l V e r d e ]   S E T   A N S I _ N U L L _ D E F A U L T   O F F    
 G O  
 A L T E R   D A T A B A S E   [ e s e n c i a l V e r d e ]   S E T   A N S I _ N U L L S   O F F    
 G O  
 A L T E R   D A T A B A S E   [ e s e n c i a l V e r d e ]   S E T   A N S I _ P A D D I N G   O F F    
 G O  
 A L T E R   D A T A B A S E   [ e s e n c i a l V e r d e ]   S E T   A N S I _ W A R N I N G S   O F F    
 G O  
 A L T E R   D A T A B A S E   [ e s e n c i a l V e r d e ]   S E T   A R I T H A B O R T   O F F    
 G O  
 A L T E R   D A T A B A S E   [ e s e n c i a l V e r d e ]   S E T   A U T O _ C L O S E   O F F    
 G O  
 A L T E R   D A T A B A S E   [ e s e n c i a l V e r d e ]   S E T   A U T O _ S H R I N K   O F F    
 G O  
 A L T E R   D A T A B A S E   [ e s e n c i a l V e r d e ]   S E T   A U T O _ U P D A T E _ S T A T I S T I C S   O N    
 G O  
 A L T E R   D A T A B A S E   [ e s e n c i a l V e r d e ]   S E T   C U R S O R _ C L O S E _ O N _ C O M M I T   O F F    
 G O  
 A L T E R   D A T A B A S E   [ e s e n c i a l V e r d e ]   S E T   C U R S O R _ D E F A U L T     G L O B A L    
 G O  
 A L T E R   D A T A B A S E   [ e s e n c i a l V e r d e ]   S E T   C O N C A T _ N U L L _ Y I E L D S _ N U L L   O F F    
 G O  
 A L T E R   D A T A B A S E   [ e s e n c i a l V e r d e ]   S E T   N U M E R I C _ R O U N D A B O R T   O F F    
 G O  
 A L T E R   D A T A B A S E   [ e s e n c i a l V e r d e ]   S E T   Q U O T E D _ I D E N T I F I E R   O F F    
 G O  
 A L T E R   D A T A B A S E   [ e s e n c i a l V e r d e ]   S E T   R E C U R S I V E _ T R I G G E R S   O F F    
 G O  
 A L T E R   D A T A B A S E   [ e s e n c i a l V e r d e ]   S E T     D I S A B L E _ B R O K E R    
 G O  
 A L T E R   D A T A B A S E   [ e s e n c i a l V e r d e ]   S E T   A U T O _ U P D A T E _ S T A T I S T I C S _ A S Y N C   O F F    
 G O  
 A L T E R   D A T A B A S E   [ e s e n c i a l V e r d e ]   S E T   D A T E _ C O R R E L A T I O N _ O P T I M I Z A T I O N   O F F    
 G O  
 A L T E R   D A T A B A S E   [ e s e n c i a l V e r d e ]   S E T   T R U S T W O R T H Y   O F F    
 G O  
 A L T E R   D A T A B A S E   [ e s e n c i a l V e r d e ]   S E T   A L L O W _ S N A P S H O T _ I S O L A T I O N   O F F    
 G O  
 A L T E R   D A T A B A S E   [ e s e n c i a l V e r d e ]   S E T   P A R A M E T E R I Z A T I O N   S I M P L E    
 G O  
 A L T E R   D A T A B A S E   [ e s e n c i a l V e r d e ]   S E T   R E A D _ C O M M I T T E D _ S N A P S H O T   O F F    
 G O  
 A L T E R   D A T A B A S E   [ e s e n c i a l V e r d e ]   S E T   H O N O R _ B R O K E R _ P R I O R I T Y   O F F    
 G O  
 A L T E R   D A T A B A S E   [ e s e n c i a l V e r d e ]   S E T   R E C O V E R Y   F U L L    
 G O  
 A L T E R   D A T A B A S E   [ e s e n c i a l V e r d e ]   S E T     M U L T I _ U S E R    
 G O  
 A L T E R   D A T A B A S E   [ e s e n c i a l V e r d e ]   S E T   P A G E _ V E R I F Y   C H E C K S U M      
 G O  
 A L T E R   D A T A B A S E   [ e s e n c i a l V e r d e ]   S E T   D B _ C H A I N I N G   O F F    
 G O  
 A L T E R   D A T A B A S E   [ e s e n c i a l V e r d e ]   S E T   F I L E S T R E A M (   N O N _ T R A N S A C T E D _ A C C E S S   =   O F F   )    
 G O  
 A L T E R   D A T A B A S E   [ e s e n c i a l V e r d e ]   S E T   T A R G E T _ R E C O V E R Y _ T I M E   =   6 0   S E C O N D S    
 G O  
 A L T E R   D A T A B A S E   [ e s e n c i a l V e r d e ]   S E T   D E L A Y E D _ D U R A B I L I T Y   =   D I S A B L E D    
 G O  
 A L T E R   D A T A B A S E   [ e s e n c i a l V e r d e ]   S E T   A C C E L E R A T E D _ D A T A B A S E _ R E C O V E R Y   =   O F F      
 G O  
 E X E C   s y s . s p _ d b _ v a r d e c i m a l _ s t o r a g e _ f o r m a t   N ' e s e n c i a l V e r d e ' ,   N ' O N '  
 G O  
 A L T E R   D A T A B A S E   [ e s e n c i a l V e r d e ]   S E T   Q U E R Y _ S T O R E   =   O N  
 G O  
 A L T E R   D A T A B A S E   [ e s e n c i a l V e r d e ]   S E T   Q U E R Y _ S T O R E   ( O P E R A T I O N _ M O D E   =   R E A D _ W R I T E ,   C L E A N U P _ P O L I C Y   =   ( S T A L E _ Q U E R Y _ T H R E S H O L D _ D A Y S   =   3 0 ) ,   D A T A _ F L U S H _ I N T E R V A L _ S E C O N D S   =   9 0 0 ,   I N T E R V A L _ L E N G T H _ M I N U T E S   =   6 0 ,   M A X _ S T O R A G E _ S I Z E _ M B   =   1 0 0 0 ,   Q U E R Y _ C A P T U R E _ M O D E   =   A U T O ,   S I Z E _ B A S E D _ C L E A N U P _ M O D E   =   A U T O ,   M A X _ P L A N S _ P E R _ Q U E R Y   =   2 0 0 ,   W A I T _ S T A T S _ C A P T U R E _ M O D E   =   O N )  
 G O  
 U S E   [ e s e n c i a l V e r d e ]  
 G O  
 / * * * * * *   O b j e c t :     U s e r D e f i n e d T a b l e T y p e   [ d b o ] . [ T C u r r e n c y D a t a ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 C R E A T E   T Y P E   [ d b o ] . [ T C u r r e n c y D a t a ]   A S   T A B L E (  
 	 [ N o m b r e ]   [ v a r c h a r ] ( 3 0 )   N U L L ,  
 	 [ A c r o n i m o ]   [ v a r c h a r ] ( 4 )   N U L L ,  
 	 [ S i m b o l o ]   [ n c h a r ] ( 5 )   N U L L  
 )  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ A c c i o n e s I n v e n t a r i o s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ A c c i o n e s I n v e n t a r i o s ] (  
 	 [ A c c i o n I n v e n t a r i o I D ]   [ s m a l l i n t ]   N O T   N U L L ,  
 	 [ D e s c r i p c i o n ]   [ v a r c h a r ] ( 4 5 )   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ A c c i o n e s I n v e n t a r i o s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ A c c i o n I n v e n t a r i o I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ A c c i o n e s R e c i p i e n t e s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ A c c i o n e s R e c i p i e n t e s ] (  
 	 [ A c c i o n R e c i p i e n t e I D ]   [ s m a l l i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ D e s c r i p c i o n ]   [ v a r c h a r ] ( 3 0 )   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ A c c i o n e s R e c i p i e n t e s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ A c c i o n R e c i p i e n t e I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ A c t o r e s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ A c t o r e s ] (  
 	 [ A c t o r I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ N o m b r e ]   [ n c h a r ] ( 3 5 )   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ A c t o r e s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ A c t o r I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ A c t o r e s X C o n t r a t o ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ A c t o r e s X C o n t r a t o ] (  
 	 [ A c t o r X C o n t r a t o I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ A c t o r I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ C o n t r a t o I D ]   [ i n t ]   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ A c t o r e s X C o n t r a t o ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ A c t o r X C o n t r a t o I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ A p e r t u r a s C a j a s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ A p e r t u r a s C a j a s ] (  
 	 [ A p e r t u r a C a j a I D ]   [ b i g i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ M o n t o ]   [ d e c i m a l ] ( 1 8 ,   5 )   N O T   N U L L ,  
 	 [ T i p o D e C a m b i o I D ]   [ b i g i n t ]   N U L L ,  
 	 [ M o n e d a I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ P o s t T i m e ]   [ d a t e t i m e 2 ] ( 7 )   N O T   N U L L ,  
 	 [ I P A d d r e s s ]   [ v a r c h a r ] ( 2 0 )   N O T   N U L L ,  
 	 [ U s e r n a m e ]   [ v a r c h a r ] ( 4 5 )   N O T   N U L L ,  
 	 [ C h e c k s u m ]   [ v a r b i n a r y ] ( 1 5 0 )   N O T   N U L L ,  
 	 [ L o c a l I D ]   [ i n t ]   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ A p e r t u r a s C a j a s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ A p e r t u r a C a j a I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ B a l a n c e s L o g s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ B a l a n c e s L o g s ] (  
 	 [ B a l a n c e L o g I D ]   [ b i g i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ M o n e d a I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ M o n t o T o t a l ]   [ d e c i m a l ] ( 1 8 ,   2 )   N O T   N U L L ,  
 	 [ M o n t o A � a d i d o ]   [ d e c i m a l ] ( 1 8 ,   2 )   N O T   N U L L ,  
 	 [ P o s t T i m e ]   [ d a t e t i m e 2 ] ( 7 )   N O T   N U L L ,  
 	 [ I P A d d r e s s ]   [ v a r c h a r ] ( 2 0 )   N O T   N U L L ,  
 	 [ U s e r n a m e ]   [ v a r c h a r ] ( 4 0 )   N O T   N U L L ,  
 	 [ C h e k s u m ]   [ v a r b i n a r y ] ( 1 5 0 )   N O T   N U L L ,  
 	 [ T i p o D e C a m b i o I D ]   [ b i g i n t ]   N O T   N U L L ,  
 	 [ P r o d u c t o r I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ I n v o i c e I D ]   [ b i g i n t ]   N U L L ,  
 	 [ T r a n s a c c i o n I D ]   [ b i g i n t ]   N U L L ,  
   C O N S T R A I N T   [ P K _ B a l a n c e s L o g s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ B a l a n c e L o g I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ B r a n d s R e c i p i e n t e s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ B r a n d s R e c i p i e n t e s ] (  
 	 [ B r a n d R e c i p i e n t e I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ N o m b r e ]   [ n c h a r ] ( 4 5 )   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ B r a n d s R e c i p i e n t e s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ B r a n d R e c i p i e n t e I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ C a l i d a d e s R e c i p i e n t e s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ C a l i d a d e s R e c i p i e n t e s ] (  
 	 [ C a l i d a d R e c i p i e n t e I D ]   [ s m a l l i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ C a l i d a d ]   [ v a r c h a r ] ( 2 5 )   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ C a l i d a d e s R e c i p i e n t e s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ C a l i d a d R e c i p i e n t e I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ C a l i d a d e s R e c i p i e n t e s L o g s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ C a l i d a d e s R e c i p i e n t e s L o g s ] (  
 	 [ C a l i d a d R e c i p i e n t e L o g I D ]   [ b i g i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ H o r a ]   [ d a t e t i m e 2 ] ( 7 )   N O T   N U L L ,  
 	 [ R e c i p i e n t e I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ C a l i d a d R e c i p i e n t e I D ]   [ s m a l l i n t ]   N O T   N U L L ,  
 	 [ I P A d d r e s s ]   [ v a r c h a r ] ( 2 0 )   N O T   N U L L ,  
 	 [ U s e r n a m e ]   [ v a r c h a r ] ( 4 5 )   N O T   N U L L ,  
 	 [ C h e c k s u m ]   [ v a r b i n a r y ] ( 1 5 0 )   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ C a l i d a d e s R e c i p i e n t e s L o g s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ C a l i d a d R e c i p i e n t e L o g I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ C a m i o n e s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ C a m i o n e s ] (  
 	 [ C a m i o n I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ P l a c a ]   [ n c h a r ] ( 1 0 )   N O T   N U L L ,  
 	 [ L o c a l I D ]   [ i n t ]   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ C a m i o n e s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ C a m i o n I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ C i c l o s D e R e c o l e c c i o n ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ C i c l o s D e R e c o l e c c i o n ] (  
 	 [ C i c l o D e R e c o l e c c i o n I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ I n i c i o ]   [ d a t e t i m e 2 ] ( 7 )   N O T   N U L L ,  
 	 [ F r e c u e n c i a ]   [ i n t ]   N U L L ,  
 	 [ C o n t r a t o I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ L o c a l P r o d u c t o r I D ]   [ b i g i n t ]   N O T   N U L L ,  
 	 [ L o c a l P r o d u c t o r X C o n t r a t o I D ]   [ b i g i n t ]   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ C i c l o s D e R e c o l e c c i o n ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ C i c l o D e R e c o l e c c i o n I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ C i e r r e s C a j a s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ C i e r r e s C a j a s ] (  
 	 [ C i e r r e C a j a I D ]   [ b i g i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ A p e r t u r a C a j a I D ]   [ b i g i n t ]   N O T   N U L L ,  
 	 [ M o n t o ]   [ d e c i m a l ] ( 1 8 ,   5 )   N O T   N U L L ,  
 	 [ L o c a l I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ I P A d d r e s s ]   [ v a r c h a r ] ( 2 0 )   N O T   N U L L ,  
 	 [ U s e r n a m e ]   [ v a r c h a r ] ( 4 5 )   N O T   N U L L ,  
 	 [ C h e c k s u m ]   [ v a r b i n a r y ] ( 1 5 0 )   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ C i e r r e s C a j a s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ C i e r r e C a j a I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ C i u d a d e s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ C i u d a d e s ] (  
 	 [ C i u d a d I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ N o m b r e ]   [ n c h a r ] ( 4 0 )   N O T   N U L L ,  
 	 [ E s t a d o I D ]   [ i n t ]   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ C i u d a d e s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ C i u d a d I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ C o n t a c t o s X E m p r e s a s R e c o l e c t o r a s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ C o n t a c t o s X E m p r e s a s R e c o l e c t o r a s ] (  
 	 [ C o n t a c t o X E m p r e s a R e c o l e c t o r a I D ]   [ b i g i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ V a l o r C o n t a c t o I D ]   [ b i g i n t ]   N O T   N U L L ,  
 	 [ E m p r e s a R e c o l e c t o r a I D ]   [ i n t ]   N U L L ,  
   C O N S T R A I N T   [ P K _ C o n t a c t o s X E m p r e s a s R e c o l e c t o r a s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ C o n t a c t o X E m p r e s a R e c o l e c t o r a I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ C o n t a c t o s X L o c a l e s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ C o n t a c t o s X L o c a l e s ] (  
 	 [ C o n t a c t o X L o c a l I D ]   [ b i g i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ V a l o r C o n t a c t o I D ]   [ b i g i n t ]   N O T   N U L L ,  
 	 [ L o c a l I D ]   [ i n t ]   N U L L ,  
   C O N S T R A I N T   [ P K _ C o n t a c t o s X L o c a l e s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ C o n t a c t o X L o c a l I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ C o n t a c t o s X L o c a l e s P r o d u c t o r e s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ C o n t a c t o s X L o c a l e s P r o d u c t o r e s ] (  
 	 [ C o n t a c t o X L o c a l P r o d u c t o r I D ]   [ b i g i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ V a l o r C o n t a c t o I D ]   [ b i g i n t ]   N O T   N U L L ,  
 	 [ L o c a l P r o d u c t o r I D ]   [ b i g i n t ]   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ C o n t a c t o s X L o c a l e s P r o d u c t o r e s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ C o n t a c t o X L o c a l P r o d u c t o r I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ C o n t a c t o s X P r o d u c t o r e s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ C o n t a c t o s X P r o d u c t o r e s ] (  
 	 [ C o n c t a c t o X P r o d u c t o r I D ]   [ b i g i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ V a l o r C o n t a c t o I D ]   [ b i g i n t ]   N O T   N U L L ,  
 	 [ P r o d u c t o r I D ]   [ i n t ]   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ C o n t a c t o s X P r o d u c t o r e s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ C o n c t a c t o X P r o d u c t o r I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ C o n t r a t o s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ C o n t r a t o s ] (  
 	 [ C o n t r a t o I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ I n i c i o V i g e n c i a ]   [ d a t e ]   N O T   N U L L ,  
 	 [ F i n a l V i g e n c i a ]   [ d a t e ]   N O T   N U L L ,  
 	 [ P r o d u c t o r I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ C o s t o M e n s u a l ]   [ d e c i m a l ] ( 1 8 ,   5 )   N O T   N U L L ,  
 	 [ M o n e d a I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ T i p o D e C a m b i o I D ]   [ b i g i n t ]   N U L L ,  
   C O N S T R A I N T   [ P K _ C o n t r a t o s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ C o n t r a t o I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ C o n v e r s i o n e s D e M e d i d a s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ C o n v e r s i o n e s D e M e d i d a s ] (  
 	 [ C o n v e r s i o n D e M e d i d a I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ P r i m e r a U n i d a d ]   [ s m a l l i n t ]   N O T   N U L L ,  
 	 [ S e g u n d a U n i d a d ]   [ s m a l l i n t ]   N O T   N U L L ,  
 	 [ P r o p o r c i o n P r i m e r a ]   [ d e c i m a l ] ( 1 8 ,   5 )   N O T   N U L L ,  
 	 [ P r o p o r c i o n S e g u n d a ]   [ d e c i m a l ] ( 1 8 ,   5 )   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ C o n v e r s i o n e s D e M e d i d a s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ C o n v e r s i o n D e M e d i d a I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ C o s t o s P r o c e s o s X P a i s e s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ C o s t o s P r o c e s o s X P a i s e s ] (  
 	 [ C o s t o P r o c e s o X P a i s I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ T a r i f a ]   [ d e c i m a l ] ( 1 8 ,   5 )   N O T   N U L L ,  
 	 [ E s t a d o I D ]   [ i n t ]   N U L L ,  
 	 [ P a i s I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ M o n e d a I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ I n i c i o V i g e n c i a ]   [ d a t e t i m e 2 ] ( 7 )   N O T   N U L L ,  
 	 [ F i n a l V i g e n c i a ]   [ d a t e t i m e 2 ] ( 7 )   N O T   N U L L ,  
 	 [ D e f a u l t ]   [ b i t ]   N O T   N U L L ,  
 	 [ I P A d d r e s s ]   [ v a r c h a r ] ( 2 0 )   N O T   N U L L ,  
 	 [ U s e r n a m e ]   [ v a r c h a r ] ( 4 5 )   N O T   N U L L ,  
 	 [ C h e c k s u m ]   [ v a r b i n a r y ] ( 1 5 0 )   N O T   N U L L ,  
 	 [ P r o c e s o R e s i d u o I D ]   [ i n t ]   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ C o s t o s P r o c e s o s X P a i s e s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ C o s t o P r o c e s o X P a i s I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ C u l t u r a s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ C u l t u r a s ] (  
 	 [ C u l t u r a I D ]   [ s m a l l i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ I d i o m a I D ]   [ s m a l l i n t ]   N O T   N U L L ,  
 	 [ P a i s I D ]   [ i n t ]   N U L L ,  
 	 [ D e f a u l t ]   [ b i t ]   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ C u l t u r a s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ C u l t u r a I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ E m p r e s a s R e c o l e c t o r a s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ E m p r e s a s R e c o l e c t o r a s ] (  
 	 [ E m p r e s a R e c o l e c t o r a I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ N o m b r e ]   [ v a r c h a r ] ( 2 5 )   N O T   N U L L ,  
 	 [ A c t o r I D ]   [ i n t ]   N U L L ,  
   C O N S T R A I N T   [ P K _ E m p r e s a s R e c o l e c t o r a s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ E m p r e s a R e c o l e c t o r a I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ E s t a d o s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ E s t a d o s ] (  
 	 [ E s t a d o I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ N o m b r e ]   [ n c h a r ] ( 4 0 )   N O T   N U L L ,  
 	 [ P a i s I D ]   [ i n t ]   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ E s t a d o s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ E s t a d o I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ E s t a d o s C o n t r a t o s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ E s t a d o s C o n t r a t o s ] (  
 	 [ E s t a d o C o n t r a t o I D ]   [ s m a l l i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ D e s c r i p c i o n ]   [ v a r c h a r ] ( 2 0 )   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ E s t a d o s C o n t r a t o s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ E s t a d o C o n t r a t o I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ E s t a d o s C o n t r a t o s L o g s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ E s t a d o s C o n t r a t o s L o g s ] (  
 	 [ E s t a d o C o n t r a t o L o g I D ]   [ b i g i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ E s t a d o C o n t r a t o I D ]   [ s m a l l i n t ]   N O T   N U L L ,  
 	 [ C o n t r a t o I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ I P A d d r e s s ]   [ v a r c h a r ] ( 2 0 )   N O T   N U L L ,  
 	 [ U s e r n a m e ]   [ v a r c h a r ] ( 4 5 )   N O T   N U L L ,  
 	 [ C h e c k s u m ]   [ v a r b i n a r y ] ( 1 5 0 )   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ E s t a d o s C o n t r a t o s L o g s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ E s t a d o C o n t r a t o L o g I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ E v e n t s L o g s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ E v e n t s L o g s ] (  
 	 [ E v e n t L o g I D ]   [ b i g i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ P o s t T i m e ]   [ d a t e t i m e 2 ] ( 7 )   N O T   N U L L ,  
 	 [ I P A d d r e s s ]   [ v a r c h a r ] ( 2 0 )   N O T   N U L L ,  
 	 [ U s e r n a m e ]   [ v a r c h a r ] ( 4 5 )   N O T   N U L L ,  
 	 [ C h e c k s u m ]   [ v a r b i n a r y ] ( 1 5 0 )   N O T   N U L L ,  
 	 [ D e s c r i p c i o n ]   [ v a r c h a r ] ( 8 0 )   N O T   N U L L ,  
 	 [ R e f e r e n c e I D 1 ]   [ b i g i n t ]   N O T   N U L L ,  
 	 [ R e f e r e n c e I D 2 ]   [ b i g i n t ]   N U L L ,  
 	 [ V a l u e 1 ]   [ v a r c h a r ] ( 6 0 )   N O T   N U L L ,  
 	 [ V a l u e 2 ]   [ v a r c h a r ] ( 6 0 )   N U L L ,  
 	 [ L e v e l I D ]   [ i n t ]   N U L L ,  
 	 [ S o u r c e I D ]   [ i n t ]   N U L L ,  
 	 [ T i p o E v e n t o I D ]   [ i n t ]   N U L L ,  
 	 [ T i p o O b j e t o I D ]   [ i n t ]   N U L L ,  
   C O N S T R A I N T   [ P K _ E v e n t s L o g s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ E v e n t L o g I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ I d i o m a s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ I d i o m a s ] (  
 	 [ I d i o m a I D ]   [ s m a l l i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ N o m b r e ]   [ n c h a r ] ( 2 0 )   N U L L ,  
   C O N S T R A I N T   [ P K _ I d i o m a s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ I d i o m a I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ I n v e n t o r y L o g s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ I n v e n t o r y L o g s ] (  
 	 [ I n v e n t o r y L o g I D ]   [ b i g i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ P o s t T i m e ]   [ d a t e t i m e 2 ] ( 7 )   N O T   N U L L ,  
 	 [ A c c i o n I n v e n t a r i o I D ]   [ s m a l l i n t ]   N O T   N U L L ,  
 	 [ P r o d u c t o I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ L o c a l I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ P r o c e s o R e s i d u o L o g I D ]   [ b i g i n t ]   N U L L ,  
 	 [ C a n t i d a d ]   [ i n t ]   N O T   N U L L ,  
 	 [ I P A d d r e s s ]   [ v a r c h a r ] ( 2 0 )   N O T   N U L L ,  
 	 [ U s e r n a m e ]   [ v a r c h a r ] ( 4 5 )   N O T   N U L L ,  
 	 [ C h e c k s u m ]   [ v a r b i n a r y ] ( 1 5 0 )   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ I n v e n t o r y L o g s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ I n v e n t o r y L o g I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ I n v o i c e ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ I n v o i c e ] (  
 	 [ I n v o i c e I D ]   [ b i g i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ M o n e d a I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ M o n t o ]   [ d e c i m a l ] ( 1 8 ,   2 )   N O T   N U L L ,  
 	 [ P o s t T i m e ]   [ d a t e t i m e 2 ] ( 7 )   N O T   N U L L ,  
 	 [ I P A d d r e s s ]   [ v a r c h a r ] ( 2 0 )   N O T   N U L L ,  
 	 [ U s e r n a m e ]   [ v a r c h a r ] ( 4 5 )   N O T   N U L L ,  
 	 [ C h e c k s u m ]   [ v a r b i n a r y ] ( 1 5 0 )   N O T   N U L L ,  
 	 [ P r o d u c t o r I D ]   [ i n t ]   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ I n v o i c e ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ I n v o i c e I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ L e v e l s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ L e v e l s ] (  
 	 [ L e v e l I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ D e s c r i p c i o n ]   [ v a r c h a r ] ( 4 5 )   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ L e v e l s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ L e v e l I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ L o c a l e s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ L o c a l e s ] (  
 	 [ L o c a l I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ U b i c a c i o n I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ A c t o r I D ]   [ i n t ]   N U L L ,  
 	 [ R e g i o n I D ]   [ i n t ]   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ L o c a l e s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ L o c a l I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ L o c a l e s P r o d u c t o r e s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ L o c a l e s P r o d u c t o r e s ] (  
 	 [ L o c a l P r o d u c t o r I D ]   [ b i g i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ U b i c a c i o n I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ P r o d u c t o r I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ A c t o r I D ]   [ i n t ]   N U L L ,  
   C O N S T R A I N T   [ P K _ L o c a l e s P r o d u c t o r e s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ L o c a l P r o d u c t o r I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ L o c a l e s P r o d u c t o r e s X C o n t r a t o s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ L o c a l e s P r o d u c t o r e s X C o n t r a t o s ] (  
 	 [ L o c a l P r o d u c t o r X C o n t r a t o I D ]   [ b i g i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ C o n t r a t o I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ L o c a l P r o d u c t o r I D ]   [ b i g i n t ]   N O T   N U L L ,  
 	 [ D e t a l l e s ]   [ v a r c h a r ] ( 1 0 0 )   N U L L ,  
   C O N S T R A I N T   [ P K _ L o c a l e s P r o d u c t o r e s X C o n t r a t o s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ L o c a l P r o d u c t o r X C o n t r a t o I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ L o t e s D e s e c h o s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ L o t e s D e s e c h o s ] (  
 	 [ L o t e D e s e c h o I D ]   [ b i g i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ L o c a l I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ R e s i d u o I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ H o r a A p e r t u r a ]   [ d a t e t i m e 2 ] ( 7 )   N O T   N U L L ,  
 	 [ I P A d d r e s s ]   [ v a r c h a r ] ( 2 0 )   N O T   N U L L ,  
 	 [ U s e r n a m e ]   [ v a r c h a r ] ( 4 5 )   N O T   N U L L ,  
 	 [ C h e c k s u m ]   [ v a r b i n a r y ] ( 1 5 0 )   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ L o t e s D e s e c h o s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ L o t e D e s e c h o I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ M o n e d a s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ M o n e d a s ] (  
 	 [ M o n e d a I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ N o m b r e ]   [ v a r c h a r ] ( 3 0 )   N O T   N U L L ,  
 	 [ A c r o n i m o ]   [ n c h a r ] ( 5 )   N O T   N U L L ,  
 	 [ M o n e d a B a s e ]   [ b i t ]   N O T   N U L L ,  
 	 [ S i m b o l o ]   [ n c h a r ] ( 5 )   N U L L ,  
   C O N S T R A I N T   [ P K _ M o n e d a s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ M o n e d a I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ P a g o s D e u d a s A m b i e n t a l e s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ P a g o s D e u d a s A m b i e n t a l e s ] (  
 	 [ P a g o D e u d a A m b i e n t a l I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ P r o d u c t o r I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ M o n t o ]   [ d e c i m a l ] ( 1 8 ,   5 )   N O T   N U L L ,  
 	 [ M o n e d a I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ C o n t r a t o I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ P r o d u c t o r A y u d a d o I D ]   [ i n t ]   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ P a g o s D e u d a s A m b i e n t a l e s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ P a g o D e u d a A m b i e n t a l I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ P a i s e s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ P a i s e s ] (  
 	 [ P a i s I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ N o m b r e ]   [ n c h a r ] ( 4 0 )   N O T   N U L L ,  
 	 [ M o n e d a I D ]   [ i n t ]   N U L L ,  
 	 [ A c r o n i m o ]   [ n c h a r ] ( 8 )   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ P a i s e s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ P a i s I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ P a y m e n t s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ P a y m e n t s ] (  
 	 [ P a y m e n t I D ]   [ b i g i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ M o n e d a I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ M o n t o ]   [ d e c i m a l ] ( 1 8 ,   2 )   N O T   N U L L ,  
 	 [ P o s t T i m e ]   [ d a t e t i m e 2 ] ( 7 )   N O T   N U L L ,  
 	 [ I P A d d r e s s ]   [ v a r c h a r ] ( 2 0 )   N O T   N U L L ,  
 	 [ U s e r n a m e ]   [ v a r c h a r ] ( 4 5 )   N O T   N U L L ,  
 	 [ C h e c k s u m ]   [ v a r b i n a r y ] ( 1 5 0 )   N O T   N U L L ,  
 	 [ I n v o i c e I D ]   [ b i g i n t ]   N O T   N U L L ,  
 	 [ P r o d u c t o r I D ]   [ i n t ]   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ P a y m e n t s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ P a y m e n t I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ P o r c e n t a j e s A c t o r e s X C o n t r a t o s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ P o r c e n t a j e s A c t o r e s X C o n t r a t o s ] (  
 	 [ P o r c e n t a j e A c t o r e s X C o n t r a t o s I D ]   [ b i g i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ P o r c e n t a j e ]   [ d e c i m a l ] ( 1 8 ,   5 )   N O T   N U L L ,  
 	 [ I n i c i o V I g e n c i a ]   [ d a t e t i m e 2 ] ( 7 )   N O T   N U L L ,  
 	 [ F i n a l V i g e n c i a ]   [ d a t e t i m e 2 ] ( 7 )   N U L L ,  
 	 [ d e f a u l t ]   [ b i t ]   N O T   N U L L ,  
 	 [ I P A d d r e s s ]   [ v a r c h a r ] ( 2 0 )   N O T   N U L L ,  
 	 [ U s e r n a m e ]   [ v a r c h a r ] ( 4 0 )   N O T   N U L L ,  
 	 [ C h e c k s u m ]   [ v a r b i n a r y ] ( 1 5 0 )   N O T   N U L L ,  
 	 [ A c t o r e s X C o n t r a t o I D ]   [ i n t ]   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ P o r c e n t a j e s A c t o r e s X C o n t r a t o s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ P o r c e n t a j e A c t o r e s X C o n t r a t o s I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ P r e c i o s P r o d u c t o s X P a i s e s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ P r e c i o s P r o d u c t o s X P a i s e s ] (  
 	 [ P r e c i o P r o d u c t o X P a i s I D ]   [ b i g i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ P r e c i o ]   [ d e c i m a l ] ( 1 8 ,   5 )   N O T   N U L L ,  
 	 [ M o n e d a I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ V i g e n t e ]   [ b i t ]   N O T   N U L L ,  
 	 [ I n i c i o V i g e n c i a ]   [ d a t e t i m e 2 ] ( 7 )   N O T   N U L L ,  
 	 [ F i n a l V i g e n c i a ]   [ d a t e t i m e 2 ] ( 7 )   N U L L ,  
 	 [ P r o d u c t o I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ I P A d d r e s s ]   [ v a r c h a r ] ( 2 0 )   N O T   N U L L ,  
 	 [ U s e r n a m e ]   [ v a r c h a r ] ( 4 5 )   N O T   N U L L ,  
 	 [ C h e c k s u m ]   [ v a r b i n a r y ] ( 1 5 0 )   N O T   N U L L ,  
 	 [ P a i s I D ]   [ i n t ]   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ P r e c i o s P r o d u c t o s X P a i s e s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ P r e c i o P r o d u c t o X P a i s I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ P r o c e s o s R e s i d u o s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ P r o c e s o s R e s i d u o s ] (  
 	 [ P r o c e s o R e s i d u o I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ R e s i d u o I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ D e s e c h o R e c i c l a b l e ]   [ b i t ]   N O T   N U L L ,  
 	 [ N o m b r e ]   [ n c h a r ] ( 3 5 )   N O T   N U L L ,  
 	 [ D e s c r i p c i o n ]   [ v a r c h a r ] ( 1 5 0 )   N U L L ,  
   C O N S T R A I N T   [ P K _ P r o c e s o s R e s i d u o s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ P r o c e s o R e s i d u o I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ P r o c e s o s R e s i d u o s L o g s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ P r o c e s o s R e s i d u o s L o g s ] (  
 	 [ P r o c e s o R e s i d u o L o g I D ]   [ b i g i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ L o c a l I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ C o s t o P r o c e s o X P a i s I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ R e s i d u o I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ H o r a ]   [ d a t e t i m e 2 ] ( 7 )   N O T   N U L L ,  
 	 [ I P A d d r e s s ]   [ v a r c h a r ] ( 2 0 )   N O T   N U L L ,  
 	 [ U s e r n a m e ]   [ v a r c h a r ] ( 4 5 )   N O T   N U L L ,  
 	 [ C h e c k s u m ]   [ v a r b i n a r y ] ( 1 5 0 )   N O T   N U L L ,  
 	 [ L o t e D e s e c h o I D ]   [ b i g i n t ]   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ P r o c e s o s R e c i d u o s L o g s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ P r o c e s o R e s i d u o L o g I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ P r o d u c t o r e s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ P r o d u c t o r e s ] (  
 	 [ P r o d u c t o r I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ A c t o r I D ]   [ i n t ]   N U L L ,  
 	 [ N o m b r e ]   [ n c h a r ] ( 5 0 )   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ P r o d u c t o r e s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ P r o d u c t o r I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ P r o d u c t o s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ P r o d u c t o s ] (  
 	 [ P r o d u c t o I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ N o m b r e ]   [ n c h a r ] ( 2 5 )   N O T   N U L L ,  
 	 [ D e s c r i p c i o n ]   [ v a r c h a r ] ( 4 5 )   N O T   N U L L ,  
 	 [ E n a b l e ]   [ b i t ]   N O T   N U L L ,  
 	 [ P r o c e s o I D ]   [ i n t ]   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ P r o d u c t o s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ P r o d u c t o I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ P r o d u c t o s X V e n t a s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ P r o d u c t o s X V e n t a s ] (  
 	 [ P r o d u c t o X V e n t a I D ]   [ b i g i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ P r o d u c t o I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ P r e c i o P r o d u c t o I D ]   [ b i g i n t ]   N O T   N U L L ,  
 	 [ V e n t a I D ]   [ b i g i n t ]   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ P r o d u c t o s X V e n t a s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ P r o d u c t o X V e n t a I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ P u n t u a c i o n e s A m b i e n t a l e s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ P u n t u a c i o n e s A m b i e n t a l e s ] (  
 	 [ P u n t u a c i o n A m b i e n t a l I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ P r o d u c t o r I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ I n i c i o V i g e n c i a ]   [ d a t e ]   N O T   N U L L ,  
 	 [ F i n a l V i g e n c i a ]   [ d a t e ]   N O T   N U L L ,  
 	 [ D e f a u l t ]   [ b i t ]   N O T   N U L L ,  
 	 [ I P A d d r e s s ]   [ v a r c h a r ] ( 2 0 )   N O T   N U L L ,  
 	 [ U s e r n a m e ]   [ v a r c h a r ] ( 4 5 )   N O T   N U L L ,  
 	 [ C h e c k s u m ]   [ v a r b i n a r y ] ( 1 5 0 )   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ P u n t u a c i o n e s A m b i e n t a l e s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ P u n t u a c i o n A m b i e n t a l I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ R e c i p i e n t e s L o g s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ R e c i p i e n t e s L o g s ] (  
 	 [ R e c i p i e n t e L o g I D ]   [ b i g i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ H o r a ]   [ d a t e t i m e 2 ] ( 7 )   N O T   N U L L ,  
 	 [ T i p o R e c i p i e n t e I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ I P A d d r e s s ]   [ v a r c h a r ] ( 2 0 )   N O T   N U L L ,  
 	 [ U s e r n a m e ]   [ v a r c h a r ] ( 4 5 )   N O T   N U L L ,  
 	 [ C h e c k s u m ]   [ v a r b i n a r y ] ( 1 5 0 )   N O T   N U L L ,  
 	 [ L o c a l I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ A c c i o n R e c i p i e n t e I D ]   [ s m a l l i n t ]   N O T   N U L L ,  
 	 [ C a n t i d a d R e c i p i e n t e s ]   [ i n t ]   N O T   N U L L ,  
 	 [ R e s i d u o I D ]   [ i n t ]   N U L L ,  
 	 [ C a m i o n I D ]   [ i n t ]   N U L L ,  
 	 [ E n t r e g a d o P o r ]   [ n c h a r ] ( 4 0 )   N U L L ,  
 	 [ C o n t r a t o I D ]   [ i n t ]   N U L L ,  
 	 [ L o t e D e s e c h o I D ]   [ b i g i n t ]   N U L L ,  
   C O N S T R A I N T   [ P K _ E s t a d o s R e c i p i e n t e s L o g s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ R e c i p i e n t e L o g I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ R e g i o n e s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ R e g i o n e s ] (  
 	 [ R e g i o n I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ N o m b r e ]   [ n c h a r ] ( 4 0 )   N O T   N U L L ,  
 	 [ D e s c r i p c i o n ]   [ n c h a r ] ( 8 0 )   N U L L ,  
 	 [ C i u d a d I D ]   [ i n t ]   N U L L ,  
 	 [ E s t a d o I D ]   [ i n t ]   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ R e g i o n e s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ R e g i o n I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ R e s i d u o s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ R e s i d u o s ] (  
 	 [ R e s i d u o I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ N o m b r e ]   [ v a r c h a r ] ( 3 0 )   N O T   N U L L ,  
 	 [ T i p o R e s i d u o I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ U n i d a d D e M e d i d a I D ]   [ s m a l l i n t ]   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ R e s i d u o s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ R e s i d u o I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ R e s u l t a d o s P r o c e s o s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ R e s u l t a d o s P r o c e s o s ] (  
 	 [ R e s u l t a d o P r o c e s o I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ P r o c e s o R e s i d u o I D ]   [ i n t ]   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ R e s u l t a d o s P r o c e s o s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ R e s u l t a d o P r o c e s o I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ S o u r c e s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ S o u r c e s ] (  
 	 [ S o u r c e I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ N o m b r e ]   [ v a r c h a r ] ( 4 5 )   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ S o u r c e s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ S o u r c e I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ T i p o s C o n t a c t o s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ T i p o s C o n t a c t o s ] (  
 	 [ T i p o C o n t a c t o I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ N o m b r e ]   [ v a r c h a r ] ( 2 0 )   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ T i p o s C o n t a c t o s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ T i p o C o n t a c t o I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ T i p o s D e C a m b i o ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ T i p o s D e C a m b i o ] (  
 	 [ T i p o D e C a m b i o I D ]   [ b i g i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ M o n e d a I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ I n i c i o V i g e n c i a ]   [ d a t e t i m e 2 ] ( 7 )   N O T   N U L L ,  
 	 [ F i n a l V i g e n c i a ]   [ d a t e t i m e 2 ] ( 7 )   N O T   N U L L ,  
 	 [ D e f a u l t ]   [ b i t ]   N O T   N U L L ,  
 	 [ P r e c i o C a m b i o ]   [ d e c i m a l ] ( 1 8 ,   5 )   N O T   N U L L ,  
 	 [ I P A d d r e s s ]   [ v a r c h a r ] ( 2 0 )   N O T   N U L L ,  
 	 [ U s e r n a m e ]   [ v a r c h a r ] ( 5 0 )   N O T   N U L L ,  
 	 [ C h e c k s u m ]   [ v a r b i n a r y ] ( 1 5 0 )   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ T i p o s D e C a m b i o ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ T i p o D e C a m b i o I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ T i p o s D e C o n t r a t o s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ T i p o s D e C o n t r a t o s ] (  
 	 [ T i p o D e C o n t r a t o I D ]   [ s m a l l i n t ]   N O T   N U L L ,  
 	 [ D e s c r i p c i o n ]   [ v a r c h a r ] ( 2 5 )   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ T i p o s D e C o n t r a t o s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ T i p o D e C o n t r a t o I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ T i p o s D e P a g o s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ T i p o s D e P a g o s ] (  
 	 [ T i p o D e P a g o I D ]   [ s m a l l i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ D e s c r i p c i o n ]   [ v a r c h a r ] ( 2 0 )   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ T i p o s D e P a g o s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ T i p o D e P a g o I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ T i p o s E v e n t o s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ T i p o s E v e n t o s ] (  
 	 [ T i p o E v e n t o I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ N o m b r e ]   [ v a r c h a r ] ( 4 5 )   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ T i p o s E v e n t o s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ T i p o E v e n t o I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ T i p o s O b j e t o s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ T i p o s O b j e t o s ] (  
 	 [ T i p o O b j e t o I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ N o m b r e ]   [ v a r c h a r ] ( 4 5 )   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ T i p o s O b j e t o s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ T i p o O b j e t o I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ T i p o s R e c i p i e n t e s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ T i p o s R e c i p i e n t e s ] (  
 	 [ T i p o R e c i p i e n t e I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ T i p o R e s i d u o I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ C a p a c i d a d ]   [ d e c i m a l ] ( 1 8 ,   5 )   N O T   N U L L ,  
 	 [ U n i d a d D e M e d i d a I D ]   [ s m a l l i n t ]   N O T   N U L L ,  
 	 [ B r a n d R e c i p i e n t e I D ]   [ i n t ]   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ R e c i p i e n t e s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ T i p o R e c i p i e n t e I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ T i p o s R e c i p i e n t e s X L o c a l e s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ T i p o s R e c i p i e n t e s X L o c a l e s ] (  
 	 [ T i p o R e c i p i e n t e X L o c a l I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ T i p o R e c i p i e n t e I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ L o c a l I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ c a n t i d a d E n U s o ]   [ i n t ]   N O T   N U L L ,  
 	 [ c a n t i d a d F u e r a U s o ]   [ i n t ]   N O T   N U L L ,  
 	 [ c a n t i d a d E n R e p a r a c i o n ]   [ i n t ]   N O T   N U L L ,  
 	 [ c a n t i d a d D i s p o n i b l e ]   [ i n t ]   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ T i p o s R e c i p i e n t e s X L o c a l e s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ T i p o R e c i p i e n t e X L o c a l I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ T i p o s R e s i d u o s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ T i p o s R e s i d u o s ] (  
 	 [ T i p o R e s i d u o I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ T i p o ]   [ v a r c h a r ] ( 3 0 )   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ T i p o s R e s i d u o s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ T i p o R e s i d u o I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ T r a d u c c i o n e s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ T r a d u c c i o n e s ] (  
 	 [ T r a d u c c i o n I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ C u l t u r a I D ]   [ s m a l l i n t ]   N O T   N U L L ,  
 	 [ V a l u e ]   [ n v a r c h a r ] ( 1 5 0 )   N O T   N U L L ,  
 	 [ T i p o O b j e t o I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ R e f e r e n c e I D ]   [ b i g i n t ]   N O T   N U L L ,  
 	 [ I P A d d r e s s ]   [ v a r c h a r ] ( 2 0 )   N O T   N U L L ,  
 	 [ U s e r n a m e ]   [ v a r c h a r ] ( 4 5 )   N O T   N U L L ,  
 	 [ C h e c k s u m ]   [ v a r b i n a r y ] ( 1 5 0 )   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ T r a d u c c i o n e s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ T r a d u c c i o n I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ T r a n s a c c i o n e s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ T r a n s a c c i o n e s ] (  
 	 [ T r a n s a c c i o n I D ]   [ b i g i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ O r i g e n I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ D e s t i n a t a r i o I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ M o n e d a I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ M o n t o ]   [ d e c i m a l ] ( 1 8 ,   2 )   N O T   N U L L ,  
 	 [ P o s t T i m e ]   [ d a t e t i m e 2 ] ( 7 )   N O T   N U L L ,  
 	 [ I P A d d r e s s ]   [ v a r c h a r ] ( 2 0 )   N O T   N U L L ,  
 	 [ U s e r n a m e ]   [ v a r c h a r ] ( 4 5 )   N O T   N U L L ,  
 	 [ C h e c k s u m ]   [ v a r b i n a r y ] ( 1 5 0 )   N O T   N U L L ,  
 	 [ P a g o D e u d a A m b i e n t a l I D ]   [ i n t ]   N U L L ,  
   C O N S T R A I N T   [ P K _ T r a n s a c c i o n e s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ T r a n s a c c i o n I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ U b i c a c i o n e s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ U b i c a c i o n e s ] (  
 	 [ U b i c a c i o n I D ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ P a i s I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ E s t a d o I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ C i u d a d I D ]   [ i n t ]   N U L L ,  
 	 [ U b i c a c i o n ]   [ g e o g r a p h y ]   N O T   N U L L ,  
 	 [ Z i p c o d e ]   [ v a r c h a r ] ( 1 2 )   N O T   N U L L ,  
 	 [ R e g i o n I D ]   [ i n t ]   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ U b i c a c i o n e s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ U b i c a c i o n I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]   T E X T I M A G E _ O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ U n i d a d e s D e M e d i d a s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ U n i d a d e s D e M e d i d a s ] (  
 	 [ U n i d a d D e M e d i d a I D ]   [ s m a l l i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ U n i d a d ]   [ v a r c h a r ] ( 3 0 )   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ U n i d a d e s D e M e d i d a s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ U n i d a d D e M e d i d a I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ V a l o r e s C o n t a c t o s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ V a l o r e s C o n t a c t o s ] (  
 	 [ V a l o r C o n t a c t o I D ]   [ b i g i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ V a l o r ]   [ n c h a r ] ( 4 0 )   N O T   N U L L ,  
 	 [ P o s t T i m e ]   [ d a t e t i m e 2 ] ( 7 )   N O T   N U L L ,  
 	 [ E n a b l e d ]   [ b i t ]   N O T   N U L L ,  
 	 [ T i p o C o n t a c t o I D ]   [ i n t ]   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ V a l o r e s C o n t a c t o s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ V a l o r C o n t a c t o I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ V e n t a s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ V e n t a s ] (  
 	 [ V e n t a I D ]   [ b i g i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ P r o d u c t o r I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ L o c a l P r o d u c t o r I D ]   [ b i g i n t ]   N U L L ,  
 	 [ P o s t T i m e ]   [ d a t e t i m e 2 ] ( 7 )   N O T   N U L L ,  
 	 [ M o n t o T o t a l ]   [ d e c i m a l ] ( 1 8 ,   5 )   N O T   N U L L ,  
 	 [ M o n t o P a g a d o ]   [ d e c i m a l ] ( 1 8 ,   5 )   N O T   N U L L ,  
 	 [ V u e l t o ]   [ d e c i m a l ] ( 1 8 ,   5 )   N O T   N U L L ,  
 	 [ T i p o D e P a g o I D ]   [ s m a l l i n t ]   N O T   N U L L ,  
 	 [ T i p o D e C a m b i o I D ]   [ b i g i n t ]   N O T   N U L L ,  
 	 [ M o n e d a I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ I P A d d r e s s ]   [ v a r c h a r ] ( 2 0 )   N O T   N U L L ,  
 	 [ U s e r n a m e ]   [ v a r c h a r ] ( 4 5 )   N O T   N U L L ,  
 	 [ C h e c k s u m ]   [ v a r b i n a r y ] ( 1 5 0 )   N O T   N U L L ,  
 	 [ A p e r t u r a C a j a I D ]   [ b i g i n t ]   N O T   N U L L ,  
   C O N S T R A I N T   [ P K _ V e n t a s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ V e n t a I D ]   A S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ V o l u m e n e s R e c o l e c c i o n ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 5   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 C R E A T E   T A B L E   [ d b o ] . [ V o l u m e n e s R e c o l e c c i o n ] (  
 	 [ V o l u m e n R e c o l e c c i o n I D ]   [ b i g i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ C i c l o D e R e c o l e c c i o n I D ]   [ i n t ]   N O T   N U L L ,  
 	 [ I n i c i o V i g e n c i a ]   [ d a t e ]   N O T   N U L L ,  
 	 [ F i n a l V i g e n c i a ]   [ d a t e ]   N O T   N U L L ,  
 	 [ V o l u m e n ]   [ d e c i m a l ] ( 1 8 ,   5 )   N O T   N U L L ,  
 	 [ U n i d a d D e M e d i d a I D ]   [ s m a l l i n t ]   N O T   N U L L ,  
 	 [ R e s i d u o I D ]   [ i n t ]   N O T   N U L L  
 )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     I n d e x   [ I X _ C o s t o s P r o c e s o s X P a i s e s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 6   P M   * * * * * * /  
 C R E A T E   N O N C L U S T E R E D   I N D E X   [ I X _ C o s t o s P r o c e s o s X P a i s e s ]   O N   [ d b o ] . [ C o s t o s P r o c e s o s X P a i s e s ]  
 (  
 	 [ C o s t o P r o c e s o X P a i s I D ]   D E S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   S O R T _ I N _ T E M P D B   =   O F F ,   D R O P _ E X I S T I N G   =   O F F ,   O N L I N E   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     I n d e x   [ I X _ R e c i p i e n t e s L o g s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 6   P M   * * * * * * /  
 C R E A T E   N O N C L U S T E R E D   I N D E X   [ I X _ R e c i p i e n t e s L o g s ]   O N   [ d b o ] . [ R e c i p i e n t e s L o g s ]  
 (  
 	 [ H o r a ]   A S C ,  
 	 [ A c c i o n R e c i p i e n t e I D ]   A S C ,  
 	 [ R e s i d u o I D ]   A S C  
 )  
 I N C L U D E ( [ T i p o R e c i p i e n t e I D ] , [ L o c a l I D ] , [ C a n t i d a d R e c i p i e n t e s ] )   W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   S O R T _ I N _ T E M P D B   =   O F F ,   D R O P _ E X I S T I N G   =   O F F ,   O N L I N E   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     I n d e x   [ I X _ T i p o s D e C a m b i o ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 6   P M   * * * * * * /  
 C R E A T E   N O N C L U S T E R E D   I N D E X   [ I X _ T i p o s D e C a m b i o ]   O N   [ d b o ] . [ T i p o s D e C a m b i o ]  
 (  
 	 [ D e f a u l t ]   D E S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   S O R T _ I N _ T E M P D B   =   O F F ,   D R O P _ E X I S T I N G   =   O F F ,   O N L I N E   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 G O  
 / * * * * * *   O b j e c t :     I n d e x   [ I X _ V a l o r e s C o n t a c t o s ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 6   P M   * * * * * * /  
 C R E A T E   N O N C L U S T E R E D   I N D E X   [ I X _ V a l o r e s C o n t a c t o s ]   O N   [ d b o ] . [ V a l o r e s C o n t a c t o s ]  
 (  
 	 [ E n a b l e d ]   D E S C  
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   S O R T _ I N _ T E M P D B   =   O F F ,   D R O P _ E X I S T I N G   =   O F F ,   O N L I N E   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C a l i d a d e s R e c i p i e n t e s L o g s ]   A D D     C O N S T R A I N T   [ D F _ C a l i d a d e s R e c i p i e n t e s L o g s _ H o r a ]     D E F A U L T   ( s y s u t c d a t e t i m e ( ) )   F O R   [ H o r a ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C i c l o s D e R e c o l e c c i o n ]   A D D     C O N S T R A I N T   [ D F _ C i c l o s D e R e c o l e c c i o n _ F r e c u e n c i a ]     D E F A U L T   ( ( 7 ) )   F O R   [ F r e c u e n c i a ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C u l t u r a s ]   A D D     C O N S T R A I N T   [ D F _ C u l t u r a s _ D e f a u l t ]     D E F A U L T   ( ( 0 ) )   F O R   [ D e f a u l t ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ E v e n t s L o g s ]   A D D     C O N S T R A I N T   [ D F _ E v e n t s L o g s _ P o s t T i m e ]     D E F A U L T   ( s y s u t c d a t e t i m e ( ) )   F O R   [ P o s t T i m e ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ M o n e d a s ]   A D D     C O N S T R A I N T   [ D F _ M o n e d a s _ M o n e d a B a s e ]     D E F A U L T   ( ( 0 ) )   F O R   [ M o n e d a B a s e ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ R e c i p i e n t e s L o g s ]   A D D     C O N S T R A I N T   [ D F _ E s t a d o s R e c i p i e n t e s L o g s _ H o r a ]     D E F A U L T   ( s y s u t c d a t e t i m e ( ) )   F O R   [ H o r a ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ T i p o s D e C a m b i o ]   A D D     C O N S T R A I N T   [ D F _ T i p o s D e C a m b i o _ I n i c i o V i g e n c i a ]     D E F A U L T   ( s y s u t c d a t e t i m e ( ) )   F O R   [ I n i c i o V i g e n c i a ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V a l o r e s C o n t a c t o s ]   A D D     C O N S T R A I N T   [ D F _ V a l o r e s C o n t a c t o s _ P o s t T i m e ]     D E F A U L T   ( s y s u t c d a t e t i m e ( ) )   F O R   [ P o s t T i m e ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V a l o r e s C o n t a c t o s ]   A D D     C O N S T R A I N T   [ D F _ V a l o r e s C o n t a c t o s _ E n a b l e d ]     D E F A U L T   ( ( 1 ) )   F O R   [ E n a b l e d ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ A c t o r e s X C o n t r a t o ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ A c t o r e s X C o n t r a t o _ A c t o r e s ]   F O R E I G N   K E Y ( [ A c t o r I D ] )  
 R E F E R E N C E S   [ d b o ] . [ A c t o r e s ]   ( [ A c t o r I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ A c t o r e s X C o n t r a t o ]   C H E C K   C O N S T R A I N T   [ F K _ A c t o r e s X C o n t r a t o _ A c t o r e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ A c t o r e s X C o n t r a t o ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ A c t o r e s X C o n t r a t o _ C o n t r a t o s ]   F O R E I G N   K E Y ( [ C o n t r a t o I D ] )  
 R E F E R E N C E S   [ d b o ] . [ C o n t r a t o s ]   ( [ C o n t r a t o I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ A c t o r e s X C o n t r a t o ]   C H E C K   C O N S T R A I N T   [ F K _ A c t o r e s X C o n t r a t o _ C o n t r a t o s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ A p e r t u r a s C a j a s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ A p e r t u r a s C a j a s _ L o c a l e s ]   F O R E I G N   K E Y ( [ L o c a l I D ] )  
 R E F E R E N C E S   [ d b o ] . [ L o c a l e s ]   ( [ L o c a l I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ A p e r t u r a s C a j a s ]   C H E C K   C O N S T R A I N T   [ F K _ A p e r t u r a s C a j a s _ L o c a l e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ A p e r t u r a s C a j a s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ A p e r t u r a s C a j a s _ M o n e d a s ]   F O R E I G N   K E Y ( [ M o n e d a I D ] )  
 R E F E R E N C E S   [ d b o ] . [ M o n e d a s ]   ( [ M o n e d a I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ A p e r t u r a s C a j a s ]   C H E C K   C O N S T R A I N T   [ F K _ A p e r t u r a s C a j a s _ M o n e d a s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ A p e r t u r a s C a j a s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ A p e r t u r a s C a j a s _ T i p o s D e C a m b i o ]   F O R E I G N   K E Y ( [ T i p o D e C a m b i o I D ] )  
 R E F E R E N C E S   [ d b o ] . [ T i p o s D e C a m b i o ]   ( [ T i p o D e C a m b i o I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ A p e r t u r a s C a j a s ]   C H E C K   C O N S T R A I N T   [ F K _ A p e r t u r a s C a j a s _ T i p o s D e C a m b i o ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ B a l a n c e s L o g s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ B a l a n c e s L o g s _ I n v o i c e ]   F O R E I G N   K E Y ( [ I n v o i c e I D ] )  
 R E F E R E N C E S   [ d b o ] . [ I n v o i c e ]   ( [ I n v o i c e I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ B a l a n c e s L o g s ]   C H E C K   C O N S T R A I N T   [ F K _ B a l a n c e s L o g s _ I n v o i c e ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ B a l a n c e s L o g s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ B a l a n c e s L o g s _ M o n e d a s ]   F O R E I G N   K E Y ( [ M o n e d a I D ] )  
 R E F E R E N C E S   [ d b o ] . [ M o n e d a s ]   ( [ M o n e d a I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ B a l a n c e s L o g s ]   C H E C K   C O N S T R A I N T   [ F K _ B a l a n c e s L o g s _ M o n e d a s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ B a l a n c e s L o g s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ B a l a n c e s L o g s _ P r o d u c t o r e s ]   F O R E I G N   K E Y ( [ P r o d u c t o r I D ] )  
 R E F E R E N C E S   [ d b o ] . [ P r o d u c t o r e s ]   ( [ P r o d u c t o r I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ B a l a n c e s L o g s ]   C H E C K   C O N S T R A I N T   [ F K _ B a l a n c e s L o g s _ P r o d u c t o r e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ B a l a n c e s L o g s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ B a l a n c e s L o g s _ T i p o s D e C a m b i o ]   F O R E I G N   K E Y ( [ T i p o D e C a m b i o I D ] )  
 R E F E R E N C E S   [ d b o ] . [ T i p o s D e C a m b i o ]   ( [ T i p o D e C a m b i o I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ B a l a n c e s L o g s ]   C H E C K   C O N S T R A I N T   [ F K _ B a l a n c e s L o g s _ T i p o s D e C a m b i o ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ B a l a n c e s L o g s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ B a l a n c e s L o g s _ T r a n s a c c i o n e s ]   F O R E I G N   K E Y ( [ T r a n s a c c i o n I D ] )  
 R E F E R E N C E S   [ d b o ] . [ T r a n s a c c i o n e s ]   ( [ T r a n s a c c i o n I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ B a l a n c e s L o g s ]   C H E C K   C O N S T R A I N T   [ F K _ B a l a n c e s L o g s _ T r a n s a c c i o n e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C a l i d a d e s R e c i p i e n t e s L o g s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ C a l i d a d e s R e c i p i e n t e s L o g s _ C a l i d a d e s R e c i p i e n t e s ]   F O R E I G N   K E Y ( [ C a l i d a d R e c i p i e n t e I D ] )  
 R E F E R E N C E S   [ d b o ] . [ C a l i d a d e s R e c i p i e n t e s ]   ( [ C a l i d a d R e c i p i e n t e I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C a l i d a d e s R e c i p i e n t e s L o g s ]   C H E C K   C O N S T R A I N T   [ F K _ C a l i d a d e s R e c i p i e n t e s L o g s _ C a l i d a d e s R e c i p i e n t e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C a l i d a d e s R e c i p i e n t e s L o g s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ C a l i d a d e s R e c i p i e n t e s L o g s _ R e c i p i e n t e s ]   F O R E I G N   K E Y ( [ R e c i p i e n t e I D ] )  
 R E F E R E N C E S   [ d b o ] . [ T i p o s R e c i p i e n t e s ]   ( [ T i p o R e c i p i e n t e I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C a l i d a d e s R e c i p i e n t e s L o g s ]   C H E C K   C O N S T R A I N T   [ F K _ C a l i d a d e s R e c i p i e n t e s L o g s _ R e c i p i e n t e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C a m i o n e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ C a m i o n e s _ L o c a l e s ]   F O R E I G N   K E Y ( [ L o c a l I D ] )  
 R E F E R E N C E S   [ d b o ] . [ L o c a l e s ]   ( [ L o c a l I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C a m i o n e s ]   C H E C K   C O N S T R A I N T   [ F K _ C a m i o n e s _ L o c a l e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C i c l o s D e R e c o l e c c i o n ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ C i c l o s D e R e c o l e c c i o n _ C o n t r a t o s ]   F O R E I G N   K E Y ( [ C o n t r a t o I D ] )  
 R E F E R E N C E S   [ d b o ] . [ C o n t r a t o s ]   ( [ C o n t r a t o I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C i c l o s D e R e c o l e c c i o n ]   C H E C K   C O N S T R A I N T   [ F K _ C i c l o s D e R e c o l e c c i o n _ C o n t r a t o s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C i c l o s D e R e c o l e c c i o n ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ C i c l o s D e R e c o l e c c i o n _ L o c a l e s P r o d u c t o r e s ]   F O R E I G N   K E Y ( [ L o c a l P r o d u c t o r I D ] )  
 R E F E R E N C E S   [ d b o ] . [ L o c a l e s P r o d u c t o r e s ]   ( [ L o c a l P r o d u c t o r I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C i c l o s D e R e c o l e c c i o n ]   C H E C K   C O N S T R A I N T   [ F K _ C i c l o s D e R e c o l e c c i o n _ L o c a l e s P r o d u c t o r e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C i c l o s D e R e c o l e c c i o n ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ C i c l o s D e R e c o l e c c i o n _ L o c a l e s P r o d u c t o r e s X C o n t r a t o s ]   F O R E I G N   K E Y ( [ L o c a l P r o d u c t o r X C o n t r a t o I D ] )  
 R E F E R E N C E S   [ d b o ] . [ L o c a l e s P r o d u c t o r e s X C o n t r a t o s ]   ( [ L o c a l P r o d u c t o r X C o n t r a t o I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C i c l o s D e R e c o l e c c i o n ]   C H E C K   C O N S T R A I N T   [ F K _ C i c l o s D e R e c o l e c c i o n _ L o c a l e s P r o d u c t o r e s X C o n t r a t o s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C i e r r e s C a j a s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ C i e r r e s C a j a s _ A p e r t u r a s C a j a s ]   F O R E I G N   K E Y ( [ A p e r t u r a C a j a I D ] )  
 R E F E R E N C E S   [ d b o ] . [ A p e r t u r a s C a j a s ]   ( [ A p e r t u r a C a j a I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C i e r r e s C a j a s ]   C H E C K   C O N S T R A I N T   [ F K _ C i e r r e s C a j a s _ A p e r t u r a s C a j a s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C i e r r e s C a j a s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ C i e r r e s C a j a s _ L o c a l e s ]   F O R E I G N   K E Y ( [ L o c a l I D ] )  
 R E F E R E N C E S   [ d b o ] . [ L o c a l e s ]   ( [ L o c a l I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C i e r r e s C a j a s ]   C H E C K   C O N S T R A I N T   [ F K _ C i e r r e s C a j a s _ L o c a l e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C i u d a d e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ C i u d a d e s _ E s t a d o s ]   F O R E I G N   K E Y ( [ E s t a d o I D ] )  
 R E F E R E N C E S   [ d b o ] . [ E s t a d o s ]   ( [ E s t a d o I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C i u d a d e s ]   C H E C K   C O N S T R A I N T   [ F K _ C i u d a d e s _ E s t a d o s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C o n t a c t o s X E m p r e s a s R e c o l e c t o r a s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ C o n t a c t o s X E m p r e s a s R e c o l e c t o r a s _ E m p r e s a s R e c o l e c t o r a s ]   F O R E I G N   K E Y ( [ E m p r e s a R e c o l e c t o r a I D ] )  
 R E F E R E N C E S   [ d b o ] . [ E m p r e s a s R e c o l e c t o r a s ]   ( [ E m p r e s a R e c o l e c t o r a I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C o n t a c t o s X E m p r e s a s R e c o l e c t o r a s ]   C H E C K   C O N S T R A I N T   [ F K _ C o n t a c t o s X E m p r e s a s R e c o l e c t o r a s _ E m p r e s a s R e c o l e c t o r a s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C o n t a c t o s X E m p r e s a s R e c o l e c t o r a s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ C o n t a c t o s X E m p r e s a s R e c o l e c t o r a s _ V a l o r e s C o n t a c t o s ]   F O R E I G N   K E Y ( [ V a l o r C o n t a c t o I D ] )  
 R E F E R E N C E S   [ d b o ] . [ V a l o r e s C o n t a c t o s ]   ( [ V a l o r C o n t a c t o I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C o n t a c t o s X E m p r e s a s R e c o l e c t o r a s ]   C H E C K   C O N S T R A I N T   [ F K _ C o n t a c t o s X E m p r e s a s R e c o l e c t o r a s _ V a l o r e s C o n t a c t o s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C o n t a c t o s X L o c a l e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ C o n t a c t o s X L o c a l e s _ L o c a l e s ]   F O R E I G N   K E Y ( [ L o c a l I D ] )  
 R E F E R E N C E S   [ d b o ] . [ L o c a l e s ]   ( [ L o c a l I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C o n t a c t o s X L o c a l e s ]   C H E C K   C O N S T R A I N T   [ F K _ C o n t a c t o s X L o c a l e s _ L o c a l e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C o n t a c t o s X L o c a l e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ C o n t a c t o s X L o c a l e s _ V a l o r e s C o n t a c t o s ]   F O R E I G N   K E Y ( [ V a l o r C o n t a c t o I D ] )  
 R E F E R E N C E S   [ d b o ] . [ V a l o r e s C o n t a c t o s ]   ( [ V a l o r C o n t a c t o I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C o n t a c t o s X L o c a l e s ]   C H E C K   C O N S T R A I N T   [ F K _ C o n t a c t o s X L o c a l e s _ V a l o r e s C o n t a c t o s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C o n t a c t o s X L o c a l e s P r o d u c t o r e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ C o n t a c t o s X L o c a l e s P r o d u c t o r e s _ L o c a l e s P r o d u c t o r e s ]   F O R E I G N   K E Y ( [ L o c a l P r o d u c t o r I D ] )  
 R E F E R E N C E S   [ d b o ] . [ L o c a l e s P r o d u c t o r e s ]   ( [ L o c a l P r o d u c t o r I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C o n t a c t o s X L o c a l e s P r o d u c t o r e s ]   C H E C K   C O N S T R A I N T   [ F K _ C o n t a c t o s X L o c a l e s P r o d u c t o r e s _ L o c a l e s P r o d u c t o r e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C o n t a c t o s X L o c a l e s P r o d u c t o r e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ C o n t a c t o s X L o c a l e s P r o d u c t o r e s _ V a l o r e s C o n t a c t o s ]   F O R E I G N   K E Y ( [ V a l o r C o n t a c t o I D ] )  
 R E F E R E N C E S   [ d b o ] . [ V a l o r e s C o n t a c t o s ]   ( [ V a l o r C o n t a c t o I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C o n t a c t o s X L o c a l e s P r o d u c t o r e s ]   C H E C K   C O N S T R A I N T   [ F K _ C o n t a c t o s X L o c a l e s P r o d u c t o r e s _ V a l o r e s C o n t a c t o s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C o n t a c t o s X P r o d u c t o r e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ C o n t a c t o s X P r o d u c t o r e s _ P r o d u c t o r e s ]   F O R E I G N   K E Y ( [ P r o d u c t o r I D ] )  
 R E F E R E N C E S   [ d b o ] . [ P r o d u c t o r e s ]   ( [ P r o d u c t o r I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C o n t a c t o s X P r o d u c t o r e s ]   C H E C K   C O N S T R A I N T   [ F K _ C o n t a c t o s X P r o d u c t o r e s _ P r o d u c t o r e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C o n t a c t o s X P r o d u c t o r e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ C o n t a c t o s X P r o d u c t o r e s _ V a l o r e s C o n t a c t o s ]   F O R E I G N   K E Y ( [ V a l o r C o n t a c t o I D ] )  
 R E F E R E N C E S   [ d b o ] . [ V a l o r e s C o n t a c t o s ]   ( [ V a l o r C o n t a c t o I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C o n t a c t o s X P r o d u c t o r e s ]   C H E C K   C O N S T R A I N T   [ F K _ C o n t a c t o s X P r o d u c t o r e s _ V a l o r e s C o n t a c t o s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C o n t r a t o s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ C o n t r a t o s _ M o n e d a s ]   F O R E I G N   K E Y ( [ M o n e d a I D ] )  
 R E F E R E N C E S   [ d b o ] . [ M o n e d a s ]   ( [ M o n e d a I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C o n t r a t o s ]   C H E C K   C O N S T R A I N T   [ F K _ C o n t r a t o s _ M o n e d a s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C o n t r a t o s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ C o n t r a t o s _ P r o d u c t o r e s ]   F O R E I G N   K E Y ( [ P r o d u c t o r I D ] )  
 R E F E R E N C E S   [ d b o ] . [ P r o d u c t o r e s ]   ( [ P r o d u c t o r I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C o n t r a t o s ]   C H E C K   C O N S T R A I N T   [ F K _ C o n t r a t o s _ P r o d u c t o r e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C o n t r a t o s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ C o n t r a t o s _ T i p o s D e C a m b i o ]   F O R E I G N   K E Y ( [ T i p o D e C a m b i o I D ] )  
 R E F E R E N C E S   [ d b o ] . [ T i p o s D e C a m b i o ]   ( [ T i p o D e C a m b i o I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C o n t r a t o s ]   C H E C K   C O N S T R A I N T   [ F K _ C o n t r a t o s _ T i p o s D e C a m b i o ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C o n v e r s i o n e s D e M e d i d a s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ C o n v e r s i o n e s D e M e d i d a s _ U n i d a d e s D e M e d i d a s ]   F O R E I G N   K E Y ( [ P r i m e r a U n i d a d ] )  
 R E F E R E N C E S   [ d b o ] . [ U n i d a d e s D e M e d i d a s ]   ( [ U n i d a d D e M e d i d a I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C o n v e r s i o n e s D e M e d i d a s ]   C H E C K   C O N S T R A I N T   [ F K _ C o n v e r s i o n e s D e M e d i d a s _ U n i d a d e s D e M e d i d a s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C o n v e r s i o n e s D e M e d i d a s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ C o n v e r s i o n e s D e M e d i d a s _ U n i d a d e s D e M e d i d a s 1 ]   F O R E I G N   K E Y ( [ S e g u n d a U n i d a d ] )  
 R E F E R E N C E S   [ d b o ] . [ U n i d a d e s D e M e d i d a s ]   ( [ U n i d a d D e M e d i d a I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C o n v e r s i o n e s D e M e d i d a s ]   C H E C K   C O N S T R A I N T   [ F K _ C o n v e r s i o n e s D e M e d i d a s _ U n i d a d e s D e M e d i d a s 1 ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C o s t o s P r o c e s o s X P a i s e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ C o s t o s P r o c e s o s X P a i s e s _ M o n e d a s ]   F O R E I G N   K E Y ( [ M o n e d a I D ] )  
 R E F E R E N C E S   [ d b o ] . [ M o n e d a s ]   ( [ M o n e d a I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C o s t o s P r o c e s o s X P a i s e s ]   C H E C K   C O N S T R A I N T   [ F K _ C o s t o s P r o c e s o s X P a i s e s _ M o n e d a s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C o s t o s P r o c e s o s X P a i s e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ C o s t o s P r o c e s o s X P a i s e s _ P a i s e s ]   F O R E I G N   K E Y ( [ P a i s I D ] )  
 R E F E R E N C E S   [ d b o ] . [ P a i s e s ]   ( [ P a i s I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C o s t o s P r o c e s o s X P a i s e s ]   C H E C K   C O N S T R A I N T   [ F K _ C o s t o s P r o c e s o s X P a i s e s _ P a i s e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C o s t o s P r o c e s o s X P a i s e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ C o s t o s P r o c e s o s X P a i s e s _ P r o c e s o s R e s i d u o s ]   F O R E I G N   K E Y ( [ P r o c e s o R e s i d u o I D ] )  
 R E F E R E N C E S   [ d b o ] . [ P r o c e s o s R e s i d u o s ]   ( [ P r o c e s o R e s i d u o I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C o s t o s P r o c e s o s X P a i s e s ]   C H E C K   C O N S T R A I N T   [ F K _ C o s t o s P r o c e s o s X P a i s e s _ P r o c e s o s R e s i d u o s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C u l t u r a s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ C u l t u r a s _ I d i o m a s ]   F O R E I G N   K E Y ( [ I d i o m a I D ] )  
 R E F E R E N C E S   [ d b o ] . [ I d i o m a s ]   ( [ I d i o m a I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C u l t u r a s ]   C H E C K   C O N S T R A I N T   [ F K _ C u l t u r a s _ I d i o m a s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C u l t u r a s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ C u l t u r a s _ P a i s e s ]   F O R E I G N   K E Y ( [ P a i s I D ] )  
 R E F E R E N C E S   [ d b o ] . [ P a i s e s ]   ( [ P a i s I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ C u l t u r a s ]   C H E C K   C O N S T R A I N T   [ F K _ C u l t u r a s _ P a i s e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ E m p r e s a s R e c o l e c t o r a s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ E m p r e s a s R e c o l e c t o r a s _ A c t o r e s ]   F O R E I G N   K E Y ( [ A c t o r I D ] )  
 R E F E R E N C E S   [ d b o ] . [ A c t o r e s ]   ( [ A c t o r I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ E m p r e s a s R e c o l e c t o r a s ]   C H E C K   C O N S T R A I N T   [ F K _ E m p r e s a s R e c o l e c t o r a s _ A c t o r e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ E s t a d o s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ E s t a d o s _ P a i s e s ]   F O R E I G N   K E Y ( [ P a i s I D ] )  
 R E F E R E N C E S   [ d b o ] . [ P a i s e s ]   ( [ P a i s I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ E s t a d o s ]   C H E C K   C O N S T R A I N T   [ F K _ E s t a d o s _ P a i s e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ E s t a d o s C o n t r a t o s L o g s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ E s t a d o s C o n t r a t o s L o g s _ C o n t r a t o s ]   F O R E I G N   K E Y ( [ C o n t r a t o I D ] )  
 R E F E R E N C E S   [ d b o ] . [ C o n t r a t o s ]   ( [ C o n t r a t o I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ E s t a d o s C o n t r a t o s L o g s ]   C H E C K   C O N S T R A I N T   [ F K _ E s t a d o s C o n t r a t o s L o g s _ C o n t r a t o s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ E s t a d o s C o n t r a t o s L o g s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ E s t a d o s C o n t r a t o s L o g s _ E s t a d o s C o n t r a t o s ]   F O R E I G N   K E Y ( [ E s t a d o C o n t r a t o I D ] )  
 R E F E R E N C E S   [ d b o ] . [ E s t a d o s C o n t r a t o s ]   ( [ E s t a d o C o n t r a t o I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ E s t a d o s C o n t r a t o s L o g s ]   C H E C K   C O N S T R A I N T   [ F K _ E s t a d o s C o n t r a t o s L o g s _ E s t a d o s C o n t r a t o s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ E v e n t s L o g s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ E v e n t s L o g s _ L e v e l s ]   F O R E I G N   K E Y ( [ L e v e l I D ] )  
 R E F E R E N C E S   [ d b o ] . [ L e v e l s ]   ( [ L e v e l I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ E v e n t s L o g s ]   C H E C K   C O N S T R A I N T   [ F K _ E v e n t s L o g s _ L e v e l s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ E v e n t s L o g s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ E v e n t s L o g s _ S o u r c e s ]   F O R E I G N   K E Y ( [ S o u r c e I D ] )  
 R E F E R E N C E S   [ d b o ] . [ S o u r c e s ]   ( [ S o u r c e I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ E v e n t s L o g s ]   C H E C K   C O N S T R A I N T   [ F K _ E v e n t s L o g s _ S o u r c e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ E v e n t s L o g s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ E v e n t s L o g s _ T i p o s E v e n t o s ]   F O R E I G N   K E Y ( [ T i p o E v e n t o I D ] )  
 R E F E R E N C E S   [ d b o ] . [ T i p o s E v e n t o s ]   ( [ T i p o E v e n t o I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ E v e n t s L o g s ]   C H E C K   C O N S T R A I N T   [ F K _ E v e n t s L o g s _ T i p o s E v e n t o s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ E v e n t s L o g s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ E v e n t s L o g s _ T i p o s O b j e t o s ]   F O R E I G N   K E Y ( [ T i p o O b j e t o I D ] )  
 R E F E R E N C E S   [ d b o ] . [ T i p o s O b j e t o s ]   ( [ T i p o O b j e t o I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ E v e n t s L o g s ]   C H E C K   C O N S T R A I N T   [ F K _ E v e n t s L o g s _ T i p o s O b j e t o s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ I n v e n t o r y L o g s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ I n v e n t o r y L o g s _ A c c i o n e s I n v e n t a r i o s ]   F O R E I G N   K E Y ( [ A c c i o n I n v e n t a r i o I D ] )  
 R E F E R E N C E S   [ d b o ] . [ A c c i o n e s I n v e n t a r i o s ]   ( [ A c c i o n I n v e n t a r i o I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ I n v e n t o r y L o g s ]   C H E C K   C O N S T R A I N T   [ F K _ I n v e n t o r y L o g s _ A c c i o n e s I n v e n t a r i o s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ I n v e n t o r y L o g s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ I n v e n t o r y L o g s _ L o c a l e s ]   F O R E I G N   K E Y ( [ L o c a l I D ] )  
 R E F E R E N C E S   [ d b o ] . [ L o c a l e s ]   ( [ L o c a l I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ I n v e n t o r y L o g s ]   C H E C K   C O N S T R A I N T   [ F K _ I n v e n t o r y L o g s _ L o c a l e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ I n v e n t o r y L o g s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ I n v e n t o r y L o g s _ P r o c e s o s R e s i d u o s L o g s ]   F O R E I G N   K E Y ( [ P r o c e s o R e s i d u o L o g I D ] )  
 R E F E R E N C E S   [ d b o ] . [ P r o c e s o s R e s i d u o s L o g s ]   ( [ P r o c e s o R e s i d u o L o g I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ I n v e n t o r y L o g s ]   C H E C K   C O N S T R A I N T   [ F K _ I n v e n t o r y L o g s _ P r o c e s o s R e s i d u o s L o g s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ I n v e n t o r y L o g s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ I n v e n t o r y L o g s _ P r o d u c t o s ]   F O R E I G N   K E Y ( [ P r o d u c t o I D ] )  
 R E F E R E N C E S   [ d b o ] . [ P r o d u c t o s ]   ( [ P r o d u c t o I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ I n v e n t o r y L o g s ]   C H E C K   C O N S T R A I N T   [ F K _ I n v e n t o r y L o g s _ P r o d u c t o s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ I n v o i c e ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ I n v o i c e _ M o n e d a s ]   F O R E I G N   K E Y ( [ M o n e d a I D ] )  
 R E F E R E N C E S   [ d b o ] . [ M o n e d a s ]   ( [ M o n e d a I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ I n v o i c e ]   C H E C K   C O N S T R A I N T   [ F K _ I n v o i c e _ M o n e d a s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ I n v o i c e ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ I n v o i c e _ P r o d u c t o r e s ]   F O R E I G N   K E Y ( [ P r o d u c t o r I D ] )  
 R E F E R E N C E S   [ d b o ] . [ P r o d u c t o r e s ]   ( [ P r o d u c t o r I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ I n v o i c e ]   C H E C K   C O N S T R A I N T   [ F K _ I n v o i c e _ P r o d u c t o r e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ L o c a l e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ L o c a l e s _ A c t o r e s ]   F O R E I G N   K E Y ( [ A c t o r I D ] )  
 R E F E R E N C E S   [ d b o ] . [ A c t o r e s ]   ( [ A c t o r I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ L o c a l e s ]   C H E C K   C O N S T R A I N T   [ F K _ L o c a l e s _ A c t o r e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ L o c a l e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ L o c a l e s _ R e g i o n e s ]   F O R E I G N   K E Y ( [ R e g i o n I D ] )  
 R E F E R E N C E S   [ d b o ] . [ R e g i o n e s ]   ( [ R e g i o n I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ L o c a l e s ]   C H E C K   C O N S T R A I N T   [ F K _ L o c a l e s _ R e g i o n e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ L o c a l e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ L o c a l e s _ U b i c a c i o n e s ]   F O R E I G N   K E Y ( [ U b i c a c i o n I D ] )  
 R E F E R E N C E S   [ d b o ] . [ U b i c a c i o n e s ]   ( [ U b i c a c i o n I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ L o c a l e s ]   C H E C K   C O N S T R A I N T   [ F K _ L o c a l e s _ U b i c a c i o n e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ L o c a l e s P r o d u c t o r e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ L o c a l e s P r o d u c t o r e s _ P r o d u c t o r e s ]   F O R E I G N   K E Y ( [ P r o d u c t o r I D ] )  
 R E F E R E N C E S   [ d b o ] . [ P r o d u c t o r e s ]   ( [ P r o d u c t o r I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ L o c a l e s P r o d u c t o r e s ]   C H E C K   C O N S T R A I N T   [ F K _ L o c a l e s P r o d u c t o r e s _ P r o d u c t o r e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ L o c a l e s P r o d u c t o r e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ L o c a l e s P r o d u c t o r e s _ U b i c a c i o n e s ]   F O R E I G N   K E Y ( [ U b i c a c i o n I D ] )  
 R E F E R E N C E S   [ d b o ] . [ U b i c a c i o n e s ]   ( [ U b i c a c i o n I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ L o c a l e s P r o d u c t o r e s ]   C H E C K   C O N S T R A I N T   [ F K _ L o c a l e s P r o d u c t o r e s _ U b i c a c i o n e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ L o c a l e s P r o d u c t o r e s X C o n t r a t o s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ L o c a l e s P r o d u c t o r e s X C o n t r a t o s _ C o n t r a t o s ]   F O R E I G N   K E Y ( [ C o n t r a t o I D ] )  
 R E F E R E N C E S   [ d b o ] . [ C o n t r a t o s ]   ( [ C o n t r a t o I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ L o c a l e s P r o d u c t o r e s X C o n t r a t o s ]   C H E C K   C O N S T R A I N T   [ F K _ L o c a l e s P r o d u c t o r e s X C o n t r a t o s _ C o n t r a t o s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ L o c a l e s P r o d u c t o r e s X C o n t r a t o s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ L o c a l e s P r o d u c t o r e s X C o n t r a t o s _ L o c a l e s P r o d u c t o r e s ]   F O R E I G N   K E Y ( [ L o c a l P r o d u c t o r I D ] )  
 R E F E R E N C E S   [ d b o ] . [ L o c a l e s P r o d u c t o r e s ]   ( [ L o c a l P r o d u c t o r I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ L o c a l e s P r o d u c t o r e s X C o n t r a t o s ]   C H E C K   C O N S T R A I N T   [ F K _ L o c a l e s P r o d u c t o r e s X C o n t r a t o s _ L o c a l e s P r o d u c t o r e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ L o t e s D e s e c h o s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ L o t e s D e s e c h o s _ L o c a l e s ]   F O R E I G N   K E Y ( [ L o c a l I D ] )  
 R E F E R E N C E S   [ d b o ] . [ L o c a l e s ]   ( [ L o c a l I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ L o t e s D e s e c h o s ]   C H E C K   C O N S T R A I N T   [ F K _ L o t e s D e s e c h o s _ L o c a l e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ L o t e s D e s e c h o s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ L o t e s D e s e c h o s _ R e s i d u o s ]   F O R E I G N   K E Y ( [ R e s i d u o I D ] )  
 R E F E R E N C E S   [ d b o ] . [ R e s i d u o s ]   ( [ R e s i d u o I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ L o t e s D e s e c h o s ]   C H E C K   C O N S T R A I N T   [ F K _ L o t e s D e s e c h o s _ R e s i d u o s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P a g o s D e u d a s A m b i e n t a l e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ P a g o s D e u d a s A m b i e n t a l e s _ C o n t r a t o s ]   F O R E I G N   K E Y ( [ C o n t r a t o I D ] )  
 R E F E R E N C E S   [ d b o ] . [ C o n t r a t o s ]   ( [ C o n t r a t o I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P a g o s D e u d a s A m b i e n t a l e s ]   C H E C K   C O N S T R A I N T   [ F K _ P a g o s D e u d a s A m b i e n t a l e s _ C o n t r a t o s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P a g o s D e u d a s A m b i e n t a l e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ P a g o s D e u d a s A m b i e n t a l e s _ M o n e d a s ]   F O R E I G N   K E Y ( [ M o n e d a I D ] )  
 R E F E R E N C E S   [ d b o ] . [ M o n e d a s ]   ( [ M o n e d a I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P a g o s D e u d a s A m b i e n t a l e s ]   C H E C K   C O N S T R A I N T   [ F K _ P a g o s D e u d a s A m b i e n t a l e s _ M o n e d a s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P a g o s D e u d a s A m b i e n t a l e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ P a g o s D e u d a s A m b i e n t a l e s _ P r o d u c t o r e s ]   F O R E I G N   K E Y ( [ P r o d u c t o r I D ] )  
 R E F E R E N C E S   [ d b o ] . [ P r o d u c t o r e s ]   ( [ P r o d u c t o r I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P a g o s D e u d a s A m b i e n t a l e s ]   C H E C K   C O N S T R A I N T   [ F K _ P a g o s D e u d a s A m b i e n t a l e s _ P r o d u c t o r e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P a g o s D e u d a s A m b i e n t a l e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ P a g o s D e u d a s A m b i e n t a l e s _ P r o d u c t o r e s 1 ]   F O R E I G N   K E Y ( [ P r o d u c t o r A y u d a d o I D ] )  
 R E F E R E N C E S   [ d b o ] . [ P r o d u c t o r e s ]   ( [ P r o d u c t o r I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P a g o s D e u d a s A m b i e n t a l e s ]   C H E C K   C O N S T R A I N T   [ F K _ P a g o s D e u d a s A m b i e n t a l e s _ P r o d u c t o r e s 1 ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P a i s e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ P a i s e s _ M o n e d a s ]   F O R E I G N   K E Y ( [ M o n e d a I D ] )  
 R E F E R E N C E S   [ d b o ] . [ M o n e d a s ]   ( [ M o n e d a I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P a i s e s ]   C H E C K   C O N S T R A I N T   [ F K _ P a i s e s _ M o n e d a s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P a y m e n t s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ P a y m e n t s _ I n v o i c e ]   F O R E I G N   K E Y ( [ I n v o i c e I D ] )  
 R E F E R E N C E S   [ d b o ] . [ I n v o i c e ]   ( [ I n v o i c e I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P a y m e n t s ]   C H E C K   C O N S T R A I N T   [ F K _ P a y m e n t s _ I n v o i c e ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P a y m e n t s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ P a y m e n t s _ M o n e d a s ]   F O R E I G N   K E Y ( [ M o n e d a I D ] )  
 R E F E R E N C E S   [ d b o ] . [ M o n e d a s ]   ( [ M o n e d a I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P a y m e n t s ]   C H E C K   C O N S T R A I N T   [ F K _ P a y m e n t s _ M o n e d a s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P a y m e n t s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ P a y m e n t s _ P r o d u c t o r e s ]   F O R E I G N   K E Y ( [ P r o d u c t o r I D ] )  
 R E F E R E N C E S   [ d b o ] . [ P r o d u c t o r e s ]   ( [ P r o d u c t o r I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P a y m e n t s ]   C H E C K   C O N S T R A I N T   [ F K _ P a y m e n t s _ P r o d u c t o r e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P o r c e n t a j e s A c t o r e s X C o n t r a t o s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ P o r c e n t a j e s A c t o r e s X C o n t r a t o s _ A c t o r e s X C o n t r a t o ]   F O R E I G N   K E Y ( [ A c t o r e s X C o n t r a t o I D ] )  
 R E F E R E N C E S   [ d b o ] . [ A c t o r e s X C o n t r a t o ]   ( [ A c t o r X C o n t r a t o I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P o r c e n t a j e s A c t o r e s X C o n t r a t o s ]   C H E C K   C O N S T R A I N T   [ F K _ P o r c e n t a j e s A c t o r e s X C o n t r a t o s _ A c t o r e s X C o n t r a t o ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P r e c i o s P r o d u c t o s X P a i s e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ P r e c i o s P r o d u c t o s X P a i s e s _ M o n e d a s ]   F O R E I G N   K E Y ( [ M o n e d a I D ] )  
 R E F E R E N C E S   [ d b o ] . [ M o n e d a s ]   ( [ M o n e d a I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P r e c i o s P r o d u c t o s X P a i s e s ]   C H E C K   C O N S T R A I N T   [ F K _ P r e c i o s P r o d u c t o s X P a i s e s _ M o n e d a s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P r e c i o s P r o d u c t o s X P a i s e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ P r e c i o s P r o d u c t o s X P a i s e s _ P a i s e s ]   F O R E I G N   K E Y ( [ P a i s I D ] )  
 R E F E R E N C E S   [ d b o ] . [ P a i s e s ]   ( [ P a i s I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P r e c i o s P r o d u c t o s X P a i s e s ]   C H E C K   C O N S T R A I N T   [ F K _ P r e c i o s P r o d u c t o s X P a i s e s _ P a i s e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P r e c i o s P r o d u c t o s X P a i s e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ P r e c i o s P r o d u c t o s X P a i s e s _ P r o d u c t o s ]   F O R E I G N   K E Y ( [ P r o d u c t o I D ] )  
 R E F E R E N C E S   [ d b o ] . [ P r o d u c t o s ]   ( [ P r o d u c t o I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P r e c i o s P r o d u c t o s X P a i s e s ]   C H E C K   C O N S T R A I N T   [ F K _ P r e c i o s P r o d u c t o s X P a i s e s _ P r o d u c t o s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P r o c e s o s R e s i d u o s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ P r o c e s o s R e s i d u o s _ R e s i d u o s ]   F O R E I G N   K E Y ( [ R e s i d u o I D ] )  
 R E F E R E N C E S   [ d b o ] . [ R e s i d u o s ]   ( [ R e s i d u o I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P r o c e s o s R e s i d u o s ]   C H E C K   C O N S T R A I N T   [ F K _ P r o c e s o s R e s i d u o s _ R e s i d u o s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P r o c e s o s R e s i d u o s L o g s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ P r o c e s o s R e s i d u o s L o g s _ C o s t o s P r o c e s o s X P a i s e s ]   F O R E I G N   K E Y ( [ C o s t o P r o c e s o X P a i s I D ] )  
 R E F E R E N C E S   [ d b o ] . [ C o s t o s P r o c e s o s X P a i s e s ]   ( [ C o s t o P r o c e s o X P a i s I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P r o c e s o s R e s i d u o s L o g s ]   C H E C K   C O N S T R A I N T   [ F K _ P r o c e s o s R e s i d u o s L o g s _ C o s t o s P r o c e s o s X P a i s e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P r o c e s o s R e s i d u o s L o g s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ P r o c e s o s R e s i d u o s L o g s _ L o c a l e s ]   F O R E I G N   K E Y ( [ L o c a l I D ] )  
 R E F E R E N C E S   [ d b o ] . [ L o c a l e s ]   ( [ L o c a l I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P r o c e s o s R e s i d u o s L o g s ]   C H E C K   C O N S T R A I N T   [ F K _ P r o c e s o s R e s i d u o s L o g s _ L o c a l e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P r o c e s o s R e s i d u o s L o g s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ P r o c e s o s R e s i d u o s L o g s _ L o t e s D e s e c h o s ]   F O R E I G N   K E Y ( [ L o t e D e s e c h o I D ] )  
 R E F E R E N C E S   [ d b o ] . [ L o t e s D e s e c h o s ]   ( [ L o t e D e s e c h o I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P r o c e s o s R e s i d u o s L o g s ]   C H E C K   C O N S T R A I N T   [ F K _ P r o c e s o s R e s i d u o s L o g s _ L o t e s D e s e c h o s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P r o c e s o s R e s i d u o s L o g s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ P r o c e s o s R e s i d u o s L o g s _ R e s i d u o s ]   F O R E I G N   K E Y ( [ R e s i d u o I D ] )  
 R E F E R E N C E S   [ d b o ] . [ R e s i d u o s ]   ( [ R e s i d u o I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P r o c e s o s R e s i d u o s L o g s ]   C H E C K   C O N S T R A I N T   [ F K _ P r o c e s o s R e s i d u o s L o g s _ R e s i d u o s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P r o d u c t o r e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ P r o d u c t o r e s _ A c t o r e s ]   F O R E I G N   K E Y ( [ A c t o r I D ] )  
 R E F E R E N C E S   [ d b o ] . [ A c t o r e s ]   ( [ A c t o r I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P r o d u c t o r e s ]   C H E C K   C O N S T R A I N T   [ F K _ P r o d u c t o r e s _ A c t o r e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P r o d u c t o s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ P r o d u c t o s _ P r o c e s o s R e s i d u o s ]   F O R E I G N   K E Y ( [ P r o c e s o I D ] )  
 R E F E R E N C E S   [ d b o ] . [ P r o c e s o s R e s i d u o s ]   ( [ P r o c e s o R e s i d u o I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P r o d u c t o s ]   C H E C K   C O N S T R A I N T   [ F K _ P r o d u c t o s _ P r o c e s o s R e s i d u o s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P r o d u c t o s X V e n t a s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ P r o d u c t o s X V e n t a s _ P r e c i o s P r o d u c t o s X P a i s e s ]   F O R E I G N   K E Y ( [ P r e c i o P r o d u c t o I D ] )  
 R E F E R E N C E S   [ d b o ] . [ P r e c i o s P r o d u c t o s X P a i s e s ]   ( [ P r e c i o P r o d u c t o X P a i s I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P r o d u c t o s X V e n t a s ]   C H E C K   C O N S T R A I N T   [ F K _ P r o d u c t o s X V e n t a s _ P r e c i o s P r o d u c t o s X P a i s e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P r o d u c t o s X V e n t a s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ P r o d u c t o s X V e n t a s _ P r o d u c t o s ]   F O R E I G N   K E Y ( [ P r o d u c t o I D ] )  
 R E F E R E N C E S   [ d b o ] . [ P r o d u c t o s ]   ( [ P r o d u c t o I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P r o d u c t o s X V e n t a s ]   C H E C K   C O N S T R A I N T   [ F K _ P r o d u c t o s X V e n t a s _ P r o d u c t o s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P r o d u c t o s X V e n t a s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ P r o d u c t o s X V e n t a s _ V e n t a s ]   F O R E I G N   K E Y ( [ V e n t a I D ] )  
 R E F E R E N C E S   [ d b o ] . [ V e n t a s ]   ( [ V e n t a I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P r o d u c t o s X V e n t a s ]   C H E C K   C O N S T R A I N T   [ F K _ P r o d u c t o s X V e n t a s _ V e n t a s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P u n t u a c i o n e s A m b i e n t a l e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ P u n t u a c i o n e s A m b i e n t a l e s _ P r o d u c t o r e s ]   F O R E I G N   K E Y ( [ P r o d u c t o r I D ] )  
 R E F E R E N C E S   [ d b o ] . [ P r o d u c t o r e s ]   ( [ P r o d u c t o r I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ P u n t u a c i o n e s A m b i e n t a l e s ]   C H E C K   C O N S T R A I N T   [ F K _ P u n t u a c i o n e s A m b i e n t a l e s _ P r o d u c t o r e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ R e c i p i e n t e s L o g s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ E s t a d o s R e c i p i e n t e s L o g s _ R e c i p i e n t e s ]   F O R E I G N   K E Y ( [ T i p o R e c i p i e n t e I D ] )  
 R E F E R E N C E S   [ d b o ] . [ T i p o s R e c i p i e n t e s ]   ( [ T i p o R e c i p i e n t e I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ R e c i p i e n t e s L o g s ]   C H E C K   C O N S T R A I N T   [ F K _ E s t a d o s R e c i p i e n t e s L o g s _ R e c i p i e n t e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ R e c i p i e n t e s L o g s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ R e c i p i e n t e s L o g s _ C o n t r a t o s ]   F O R E I G N   K E Y ( [ C o n t r a t o I D ] )  
 R E F E R E N C E S   [ d b o ] . [ C o n t r a t o s ]   ( [ C o n t r a t o I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ R e c i p i e n t e s L o g s ]   C H E C K   C O N S T R A I N T   [ F K _ R e c i p i e n t e s L o g s _ C o n t r a t o s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ R e c i p i e n t e s L o g s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ R e c i p i e n t e s L o g s _ L o t e s D e s e c h o s ]   F O R E I G N   K E Y ( [ L o t e D e s e c h o I D ] )  
 R E F E R E N C E S   [ d b o ] . [ L o t e s D e s e c h o s ]   ( [ L o t e D e s e c h o I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ R e c i p i e n t e s L o g s ]   C H E C K   C O N S T R A I N T   [ F K _ R e c i p i e n t e s L o g s _ L o t e s D e s e c h o s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ R e c i p i e n t e s L o g s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ R e c i p i e n t e s X L o c a l e s L o g s _ A c c i o n e s R e c i p i e n t e s ]   F O R E I G N   K E Y ( [ A c c i o n R e c i p i e n t e I D ] )  
 R E F E R E N C E S   [ d b o ] . [ A c c i o n e s R e c i p i e n t e s ]   ( [ A c c i o n R e c i p i e n t e I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ R e c i p i e n t e s L o g s ]   C H E C K   C O N S T R A I N T   [ F K _ R e c i p i e n t e s X L o c a l e s L o g s _ A c c i o n e s R e c i p i e n t e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ R e c i p i e n t e s L o g s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ R e c i p i e n t e s X L o c a l e s L o g s _ L o c a l e s ]   F O R E I G N   K E Y ( [ L o c a l I D ] )  
 R E F E R E N C E S   [ d b o ] . [ L o c a l e s ]   ( [ L o c a l I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ R e c i p i e n t e s L o g s ]   C H E C K   C O N S T R A I N T   [ F K _ R e c i p i e n t e s X L o c a l e s L o g s _ L o c a l e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ R e c i p i e n t e s L o g s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ R e c i p i e n t e s X L o c a l e s L o g s _ R e s i d u o s ]   F O R E I G N   K E Y ( [ R e s i d u o I D ] )  
 R E F E R E N C E S   [ d b o ] . [ R e s i d u o s ]   ( [ R e s i d u o I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ R e c i p i e n t e s L o g s ]   C H E C K   C O N S T R A I N T   [ F K _ R e c i p i e n t e s X L o c a l e s L o g s _ R e s i d u o s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ R e g i o n e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ R e g i o n e s _ C i u d a d e s ]   F O R E I G N   K E Y ( [ C i u d a d I D ] )  
 R E F E R E N C E S   [ d b o ] . [ C i u d a d e s ]   ( [ C i u d a d I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ R e g i o n e s ]   C H E C K   C O N S T R A I N T   [ F K _ R e g i o n e s _ C i u d a d e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ R e g i o n e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ R e g i o n e s _ E s t a d o s ]   F O R E I G N   K E Y ( [ E s t a d o I D ] )  
 R E F E R E N C E S   [ d b o ] . [ E s t a d o s ]   ( [ E s t a d o I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ R e g i o n e s ]   C H E C K   C O N S T R A I N T   [ F K _ R e g i o n e s _ E s t a d o s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ R e s i d u o s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ R e s i d u o s _ T i p o s R e s i d u o s ]   F O R E I G N   K E Y ( [ T i p o R e s i d u o I D ] )  
 R E F E R E N C E S   [ d b o ] . [ T i p o s R e s i d u o s ]   ( [ T i p o R e s i d u o I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ R e s i d u o s ]   C H E C K   C O N S T R A I N T   [ F K _ R e s i d u o s _ T i p o s R e s i d u o s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ R e s i d u o s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ R e s i d u o s _ U n i d a d e s D e M e d i d a s ]   F O R E I G N   K E Y ( [ U n i d a d D e M e d i d a I D ] )  
 R E F E R E N C E S   [ d b o ] . [ U n i d a d e s D e M e d i d a s ]   ( [ U n i d a d D e M e d i d a I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ R e s i d u o s ]   C H E C K   C O N S T R A I N T   [ F K _ R e s i d u o s _ U n i d a d e s D e M e d i d a s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ R e s u l t a d o s P r o c e s o s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ R e s u l t a d o s P r o c e s o s _ P r o c e s o s R e s i d u o s ]   F O R E I G N   K E Y ( [ P r o c e s o R e s i d u o I D ] )  
 R E F E R E N C E S   [ d b o ] . [ P r o c e s o s R e s i d u o s ]   ( [ P r o c e s o R e s i d u o I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ R e s u l t a d o s P r o c e s o s ]   C H E C K   C O N S T R A I N T   [ F K _ R e s u l t a d o s P r o c e s o s _ P r o c e s o s R e s i d u o s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ T i p o s D e C a m b i o ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ T i p o s D e C a m b i o _ M o n e d a s ]   F O R E I G N   K E Y ( [ M o n e d a I D ] )  
 R E F E R E N C E S   [ d b o ] . [ M o n e d a s ]   ( [ M o n e d a I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ T i p o s D e C a m b i o ]   C H E C K   C O N S T R A I N T   [ F K _ T i p o s D e C a m b i o _ M o n e d a s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ T i p o s R e c i p i e n t e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ R e c i p i e n t e s _ T i p o s R e s i d u o s ]   F O R E I G N   K E Y ( [ T i p o R e s i d u o I D ] )  
 R E F E R E N C E S   [ d b o ] . [ T i p o s R e s i d u o s ]   ( [ T i p o R e s i d u o I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ T i p o s R e c i p i e n t e s ]   C H E C K   C O N S T R A I N T   [ F K _ R e c i p i e n t e s _ T i p o s R e s i d u o s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ T i p o s R e c i p i e n t e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ R e c i p i e n t e s _ U n i d a d e s D e M e d i d a s ]   F O R E I G N   K E Y ( [ U n i d a d D e M e d i d a I D ] )  
 R E F E R E N C E S   [ d b o ] . [ U n i d a d e s D e M e d i d a s ]   ( [ U n i d a d D e M e d i d a I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ T i p o s R e c i p i e n t e s ]   C H E C K   C O N S T R A I N T   [ F K _ R e c i p i e n t e s _ U n i d a d e s D e M e d i d a s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ T i p o s R e c i p i e n t e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ T i p o s R e c i p i e n t e s _ B r a n d s R e c i p i e n t e s ]   F O R E I G N   K E Y ( [ B r a n d R e c i p i e n t e I D ] )  
 R E F E R E N C E S   [ d b o ] . [ B r a n d s R e c i p i e n t e s ]   ( [ B r a n d R e c i p i e n t e I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ T i p o s R e c i p i e n t e s ]   C H E C K   C O N S T R A I N T   [ F K _ T i p o s R e c i p i e n t e s _ B r a n d s R e c i p i e n t e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ T i p o s R e c i p i e n t e s X L o c a l e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ T i p o s R e c i p i e n t e s X L o c a l e s _ L o c a l e s ]   F O R E I G N   K E Y ( [ L o c a l I D ] )  
 R E F E R E N C E S   [ d b o ] . [ L o c a l e s ]   ( [ L o c a l I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ T i p o s R e c i p i e n t e s X L o c a l e s ]   C H E C K   C O N S T R A I N T   [ F K _ T i p o s R e c i p i e n t e s X L o c a l e s _ L o c a l e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ T i p o s R e c i p i e n t e s X L o c a l e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ T i p o s R e c i p i e n t e s X L o c a l e s _ T i p o s R e c i p i e n t e s ]   F O R E I G N   K E Y ( [ T i p o R e c i p i e n t e I D ] )  
 R E F E R E N C E S   [ d b o ] . [ T i p o s R e c i p i e n t e s ]   ( [ T i p o R e c i p i e n t e I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ T i p o s R e c i p i e n t e s X L o c a l e s ]   C H E C K   C O N S T R A I N T   [ F K _ T i p o s R e c i p i e n t e s X L o c a l e s _ T i p o s R e c i p i e n t e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ T r a d u c c i o n e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ T r a d u c c i o n e s _ C u l t u r a s ]   F O R E I G N   K E Y ( [ C u l t u r a I D ] )  
 R E F E R E N C E S   [ d b o ] . [ C u l t u r a s ]   ( [ C u l t u r a I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ T r a d u c c i o n e s ]   C H E C K   C O N S T R A I N T   [ F K _ T r a d u c c i o n e s _ C u l t u r a s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ T r a d u c c i o n e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ T r a d u c c i o n e s _ T i p o s O b j e t o s ]   F O R E I G N   K E Y ( [ T i p o O b j e t o I D ] )  
 R E F E R E N C E S   [ d b o ] . [ T i p o s O b j e t o s ]   ( [ T i p o O b j e t o I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ T r a d u c c i o n e s ]   C H E C K   C O N S T R A I N T   [ F K _ T r a d u c c i o n e s _ T i p o s O b j e t o s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ T r a n s a c c i o n e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ T r a n s a c c i o n e s _ M o n e d a s ]   F O R E I G N   K E Y ( [ M o n e d a I D ] )  
 R E F E R E N C E S   [ d b o ] . [ M o n e d a s ]   ( [ M o n e d a I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ T r a n s a c c i o n e s ]   C H E C K   C O N S T R A I N T   [ F K _ T r a n s a c c i o n e s _ M o n e d a s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ T r a n s a c c i o n e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ T r a n s a c c i o n e s _ P a g o s D e u d a s A m b i e n t a l e s ]   F O R E I G N   K E Y ( [ P a g o D e u d a A m b i e n t a l I D ] )  
 R E F E R E N C E S   [ d b o ] . [ P a g o s D e u d a s A m b i e n t a l e s ]   ( [ P a g o D e u d a A m b i e n t a l I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ T r a n s a c c i o n e s ]   C H E C K   C O N S T R A I N T   [ F K _ T r a n s a c c i o n e s _ P a g o s D e u d a s A m b i e n t a l e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ T r a n s a c c i o n e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ T r a n s a c c i o n e s _ P r o d u c t o r e s _ 1 ]   F O R E I G N   K E Y ( [ O r i g e n I D ] )  
 R E F E R E N C E S   [ d b o ] . [ P r o d u c t o r e s ]   ( [ P r o d u c t o r I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ T r a n s a c c i o n e s ]   C H E C K   C O N S T R A I N T   [ F K _ T r a n s a c c i o n e s _ P r o d u c t o r e s _ 1 ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ T r a n s a c c i o n e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ T r a n s a c c i o n e s _ P r o d u c t o r e s _ 2 ]   F O R E I G N   K E Y ( [ D e s t i n a t a r i o I D ] )  
 R E F E R E N C E S   [ d b o ] . [ P r o d u c t o r e s ]   ( [ P r o d u c t o r I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ T r a n s a c c i o n e s ]   C H E C K   C O N S T R A I N T   [ F K _ T r a n s a c c i o n e s _ P r o d u c t o r e s _ 2 ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ U b i c a c i o n e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ U b i c a c i o n e s _ C i u d a d e s ]   F O R E I G N   K E Y ( [ C i u d a d I D ] )  
 R E F E R E N C E S   [ d b o ] . [ C i u d a d e s ]   ( [ C i u d a d I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ U b i c a c i o n e s ]   C H E C K   C O N S T R A I N T   [ F K _ U b i c a c i o n e s _ C i u d a d e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ U b i c a c i o n e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ U b i c a c i o n e s _ E s t a d o s ]   F O R E I G N   K E Y ( [ E s t a d o I D ] )  
 R E F E R E N C E S   [ d b o ] . [ E s t a d o s ]   ( [ E s t a d o I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ U b i c a c i o n e s ]   C H E C K   C O N S T R A I N T   [ F K _ U b i c a c i o n e s _ E s t a d o s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ U b i c a c i o n e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ U b i c a c i o n e s _ P a i s e s ]   F O R E I G N   K E Y ( [ P a i s I D ] )  
 R E F E R E N C E S   [ d b o ] . [ P a i s e s ]   ( [ P a i s I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ U b i c a c i o n e s ]   C H E C K   C O N S T R A I N T   [ F K _ U b i c a c i o n e s _ P a i s e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ U b i c a c i o n e s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ U b i c a c i o n e s _ R e g i o n e s ]   F O R E I G N   K E Y ( [ R e g i o n I D ] )  
 R E F E R E N C E S   [ d b o ] . [ R e g i o n e s ]   ( [ R e g i o n I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ U b i c a c i o n e s ]   C H E C K   C O N S T R A I N T   [ F K _ U b i c a c i o n e s _ R e g i o n e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V a l o r e s C o n t a c t o s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ V a l o r e s C o n t a c t o s _ T i p o s C o n t a c t o s ]   F O R E I G N   K E Y ( [ T i p o C o n t a c t o I D ] )  
 R E F E R E N C E S   [ d b o ] . [ T i p o s C o n t a c t o s ]   ( [ T i p o C o n t a c t o I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V a l o r e s C o n t a c t o s ]   C H E C K   C O N S T R A I N T   [ F K _ V a l o r e s C o n t a c t o s _ T i p o s C o n t a c t o s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e n t a s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ V e n t a s _ A p e r t u r a s C a j a s ]   F O R E I G N   K E Y ( [ A p e r t u r a C a j a I D ] )  
 R E F E R E N C E S   [ d b o ] . [ A p e r t u r a s C a j a s ]   ( [ A p e r t u r a C a j a I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e n t a s ]   C H E C K   C O N S T R A I N T   [ F K _ V e n t a s _ A p e r t u r a s C a j a s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e n t a s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ V e n t a s _ L o c a l e s P r o d u c t o r e s ]   F O R E I G N   K E Y ( [ L o c a l P r o d u c t o r I D ] )  
 R E F E R E N C E S   [ d b o ] . [ L o c a l e s P r o d u c t o r e s ]   ( [ L o c a l P r o d u c t o r I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e n t a s ]   C H E C K   C O N S T R A I N T   [ F K _ V e n t a s _ L o c a l e s P r o d u c t o r e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e n t a s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ V e n t a s _ M o n e d a s ]   F O R E I G N   K E Y ( [ M o n e d a I D ] )  
 R E F E R E N C E S   [ d b o ] . [ M o n e d a s ]   ( [ M o n e d a I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e n t a s ]   C H E C K   C O N S T R A I N T   [ F K _ V e n t a s _ M o n e d a s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e n t a s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ V e n t a s _ P r o d u c t o r e s ]   F O R E I G N   K E Y ( [ P r o d u c t o r I D ] )  
 R E F E R E N C E S   [ d b o ] . [ P r o d u c t o r e s ]   ( [ P r o d u c t o r I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e n t a s ]   C H E C K   C O N S T R A I N T   [ F K _ V e n t a s _ P r o d u c t o r e s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e n t a s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ V e n t a s _ T i p o s D e C a m b i o ]   F O R E I G N   K E Y ( [ T i p o D e C a m b i o I D ] )  
 R E F E R E N C E S   [ d b o ] . [ T i p o s D e C a m b i o ]   ( [ T i p o D e C a m b i o I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e n t a s ]   C H E C K   C O N S T R A I N T   [ F K _ V e n t a s _ T i p o s D e C a m b i o ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e n t a s ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ V e n t a s _ T i p o s D e P a g o s ]   F O R E I G N   K E Y ( [ T i p o D e P a g o I D ] )  
 R E F E R E N C E S   [ d b o ] . [ T i p o s D e P a g o s ]   ( [ T i p o D e P a g o I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V e n t a s ]   C H E C K   C O N S T R A I N T   [ F K _ V e n t a s _ T i p o s D e P a g o s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V o l u m e n e s R e c o l e c c i o n ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ V o l u m e n e s R e c o l e c c i o n _ C i c l o s D e R e c o l e c c i o n ]   F O R E I G N   K E Y ( [ C i c l o D e R e c o l e c c i o n I D ] )  
 R E F E R E N C E S   [ d b o ] . [ C i c l o s D e R e c o l e c c i o n ]   ( [ C i c l o D e R e c o l e c c i o n I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V o l u m e n e s R e c o l e c c i o n ]   C H E C K   C O N S T R A I N T   [ F K _ V o l u m e n e s R e c o l e c c i o n _ C i c l o s D e R e c o l e c c i o n ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V o l u m e n e s R e c o l e c c i o n ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ V o l u m e n e s R e c o l e c c i o n _ R e s i d u o s ]   F O R E I G N   K E Y ( [ R e s i d u o I D ] )  
 R E F E R E N C E S   [ d b o ] . [ R e s i d u o s ]   ( [ R e s i d u o I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V o l u m e n e s R e c o l e c c i o n ]   C H E C K   C O N S T R A I N T   [ F K _ V o l u m e n e s R e c o l e c c i o n _ R e s i d u o s ]  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V o l u m e n e s R e c o l e c c i o n ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ V o l u m e n e s R e c o l e c c i o n _ U n i d a d e s D e M e d i d a s ]   F O R E I G N   K E Y ( [ U n i d a d D e M e d i d a I D ] )  
 R E F E R E N C E S   [ d b o ] . [ U n i d a d e s D e M e d i d a s ]   ( [ U n i d a d D e M e d i d a I D ] )  
 G O  
 A L T E R   T A B L E   [ d b o ] . [ V o l u m e n e s R e c o l e c c i o n ]   C H E C K   C O N S T R A I N T   [ F K _ V o l u m e n e s R e c o l e c c i o n _ U n i d a d e s D e M e d i d a s ]  
 G O  
 / * * * * * *   O b j e c t :     S t o r e d P r o c e d u r e   [ d b o ] . [ E V S P _ R e g i s t r a r M o n e d a ]         S c r i p t   D a t e :   5 / 4 / 2 0 2 3   1 : 0 0 : 5 6   P M   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
  
  
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 - -   A u t h o r :   L u i s   N a v a r r o  
 - -   F e c h a :   2 0 2 3 - 2 7 - 0 4  
 - -   D e s c :   a  
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 C R E A T E   P R O C E D U R E   [ d b o ] . [ E V S P _ R e g i s t r a r M o n e d a ]  
 	 @ C u r r e n c i e s   T C u r r e n c y D a t a   R E A D O N L Y  
 A S    
 B E G I N  
 	  
 	 S E T   N O C O U N T   O N   - -   n o   r e t o r n e   m e t a d a t o s  
 	  
 	 D E C L A R E   @ E r r o r N u m b e r   I N T ,   @ E r r o r S e v e r i t y   I N T ,   @ E r r o r S t a t e   I N T ,   @ C u s t o m E r r o r   I N T  
 	 D E C L A R E   @ M e s s a g e   V A R C H A R ( 2 0 0 )  
 	 D E C L A R E   @ I n i c i e T r a n s a c c i o n   B I T  
  
 	  
 	 S E T   @ I n i c i e T r a n s a c c i o n   =   0  
 	 I F   @ @ T R A N C O U N T = 0   B E G I N  
 	 	 S E T   @ I n i c i e T r a n s a c c i o n   =   1  
 	 	 S E T   T R A N S A C T I O N   I S O L A T I O N   L E V E L   R E A D   C O M M I T T E D  
 	 	 B E G I N   T R A N S A C T I O N 	 	  
 	 E N D  
 	  
 	 B E G I N   T R Y  
 	 	 S E T   @ C u s t o m E r r o r   =   2 0 0 1  
  
 	 	 I N S E R T   I N T O   M o n e d a s   ( N o m b r e ,   A c r o n i m o ,   S i m b o l o )   S E L E C T   N o m b r e ,   A c r o n i m o ,   S i m b o l o   F R O M   @ C u r r e n c i e s      
 	 	  
 	 	 I F   @ I n i c i e T r a n s a c c i o n = 1   B E G I N  
 	 	 	 C O M M I T  
 	 	 E N D  
 	 E N D   T R Y  
 	 B E G I N   C A T C H  
 	 	 S E T   @ E r r o r N u m b e r   =   E R R O R _ N U M B E R ( )  
 	 	 S E T   @ E r r o r S e v e r i t y   =   E R R O R _ S E V E R I T Y ( )  
 	 	 S E T   @ E r r o r S t a t e   =   E R R O R _ S T A T E ( )  
 	 	 S E T   @ M e s s a g e   =   E R R O R _ M E S S A G E ( )  
 	 	  
 	 	 I F   @ I n i c i e T r a n s a c c i o n = 1   B E G I N  
 	 	 	 R O L L B A C K  
 	 	 E N D  
 	 	 R A I S E R R O R ( ' % s   -   E r r o r   N u m b e r :   % i ' ,    
 	 	 	 @ E r r o r S e v e r i t y ,   @ E r r o r S t a t e ,   @ M e s s a g e ,   @ C u s t o m E r r o r )  
 	 E N D   C A T C H 	  
 E N D  
 R E T U R N   0  
 G O  
 E X E C   s y s . s p _ a d d e x t e n d e d p r o p e r t y   @ n a m e = N ' M S _ D e s c r i p t i o n ' ,   @ v a l u e = N ' C a l i d a d   d e l   1 - 5 ,   d e   s u   e s t a d o '   ,   @ l e v e l 0 t y p e = N ' S C H E M A ' , @ l e v e l 0 n a m e = N ' d b o ' ,   @ l e v e l 1 t y p e = N ' T A B L E ' , @ l e v e l 1 n a m e = N ' C a l i d a d e s R e c i p i e n t e s L o g s ' ,   @ l e v e l 2 t y p e = N ' C O L U M N ' , @ l e v e l 2 n a m e = N ' C a l i d a d R e c i p i e n t e I D '  
 G O  
 E X E C   s y s . s p _ a d d e x t e n d e d p r o p e r t y   @ n a m e = N ' M S _ D e s c r i p t i o n ' ,   @ v a l u e = N ' 1 : T a r j e t a ,   2 : E f e c t i v o ,   3 : S i n p e '   ,   @ l e v e l 0 t y p e = N ' S C H E M A ' , @ l e v e l 0 n a m e = N ' d b o ' ,   @ l e v e l 1 t y p e = N ' T A B L E ' , @ l e v e l 1 n a m e = N ' V e n t a s ' ,   @ l e v e l 2 t y p e = N ' C O L U M N ' , @ l e v e l 2 n a m e = N ' T i p o D e P a g o I D '  
 G O  
 U S E   [ m a s t e r ]  
 G O  
 A L T E R   D A T A B A S E   [ e s e n c i a l V e r d e ]   S E T     R E A D _ W R I T E    
 G O  
 