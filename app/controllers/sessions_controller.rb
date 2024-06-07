class SessionsController < ApplicationController
def create
    #データが返ってこなければ失敗で終了
    unless request.env['omniauth.auth'][:uid]
        flash[:danger] = '連携に失敗しました'
        redirect_to root_url
    end
    user_data = request.env['omniauth.auth']
    user = User.find_by(user_id: user_data[:uid])
   #ユーザのデータが登録してあればログインのみ
    if user
        log_in(user)
        flash[:success] = 'ログインしました'
        redirect_to root_url
   #ユーザのデータが登録してなければ新たなUserデータを作成
    else
    
        new_user = User.new(
            user_id: user_data[:uid],
            name: "anonymous"
        )
         if new_user.save!
            log_in(new_user)
            flash[:success] = 'ユーザー登録成功'
            
        else
            flash[:danger] = '予期せぬエラーが発生しました'
            debugger
        end
        redirect_to edit_user_path(current_user)
    end
end

#ログアウト処理
def destroy
    log_out if logged_in?
    flash[:success] = 'ログアウトしました'
    redirect_to root_url
end

end