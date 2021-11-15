puts "じゃんけんぽい"
puts "(グー(0)・チョキ(1)・パー(2)を数字で選択してください)"
puts "_______________________"
def janken #じゃんけんメソッド
    
    cpu = rand(2) #乱数 0~2までの数値をランダム生成
    my_selected = gets.chomp.to_i #数値入力
    
    #例外処理
    if my_selected >= 3 
        puts "０〜２の中から選んでください"
        puts "じゃんけんポン"
        puts "_______________________"
        return true #じゃんけんメソッドに戻る
    end
    
    jankens = ["グー","チョキ","パー"] #じゃんけん選択肢を配列化→インデックスが選択肢
    puts "あなたは「#{jankens[my_selected]}」を出しました" 
    puts "相手は「#{jankens[cpu]}」を出しました"
    
    #条件分岐
    
    #あいこ
    if my_selected == cpu
        
        puts "あいこで(グー(0)・チョキ(1)・パー(2)を数字で選択してください)"
        puts "_______________________"
        return true #再度janken メソッドに戻る
    
    #勝ち    
    elsif my_selected == 0 && cpu  == 1 || my_selected == 1 && cpu  == 2 || my_selected == 2 && cpu  == 0
        
        def attimuite #あっちむいてメソッド定義
            
            puts "あっち向いてホイ"
            puts "(↑(0)・→(1)・↓(2),←(3)を数字で選択してくださ)"
            puts "_______________________"
            hoi_cpu = rand(3) #乱数 0~3までの数値をランダム生成
            hoi_my_selected = gets.chomp.to_i #数値入力
            
            #例外処理
            if hoi_my_selected >= 4 #選択肢限定
                puts "０〜3の中から選んでください"
                return attimuite #あっち向いてメソッドに戻る
            end
        
            direction = ["↑","→","↓","←"] 
            puts "あなたは「#{direction[hoi_my_selected]}」を指しました"
            puts "相手は「#{direction[hoi_cpu]}」を向きました"
        
            if hoi_my_selected == hoi_cpu 
                puts "あなたの勝ちです"
                return false #処理終了
            else
                puts "じゃんけんぽい"
                puts "(グー(0)・チョキ(1)・パー(2)を数字で選択してください)"
                puts "_______________________"
                return true #じゃんけんメソッドへ
            end
        end
        
        attimuite #あっち向いてメソッド呼出
        
    #負け    
    else 
        
        def attimuite#あっちむいてメソッド定義
            puts "あっち向いてホイ"
            puts "(↑(0)・→(1)・↓(2),←(3)を数字で選択してください)"
            puts "_______________________"
            hoi_cpu = rand(3) #乱数 0~3までの数値をランダム生成
            hoi_my_selected = gets.chomp.to_i #数値入力
       
            #例外処理
            if hoi_my_selected >= 4 #選択肢限定
                puts "０〜3の中から選んでください"
                return attimuite
            end
            
            direction = ["↑","→","↓","←"] 
            puts "あなたは「#{direction[hoi_my_selected]}」を向きました"
            puts "相手は「#{direction[hoi_cpu]}」を指しました"
            
            if hoi_my_selected == hoi_cpu
                puts "あなたの負けです"
                return false
            else
                puts "じゃんけんぽい"
                puts "(グー(0)・チョキ(1)・パー(2)を数字で選択してください)"
                puts "_______________________"
                return true
            end
        end
        
        attimuite#あっち向いてメソッド呼出
        
    end
end

#trueのときはじゃんけんメソッドを繰り返す
next_game = true 

while next_game do
    next_game = janken
end
  
