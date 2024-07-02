apt_update 'update' do
    action :update
end

package 'wireshark-qt' do
    action :install
end


log 'message' do
    message 'Wireshark installed successfully.'
    level :info
end