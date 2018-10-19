<?php

return [
    'menu' => 'dangkylaymau',
    'model' => 'dangkylaymau',
    'models' => 'dangkylaymau',
    'edit' => 'View dangkylaymau',
    'tables' => [
        'phone' => 'Phone',
        'email' => 'Email',
        'fullname' => 'Fullname',
        'address' => 'Address',
        'subject' => 'Subject',
        'content' => 'Content',
    ],
    'form' => [
        'is_read' => 'Read?',
        'status' => 'Status',
    ],
    'notices' => [
        'no_select' => 'Please select at least one dangkylaymau to take this action!',
        'update_success_message' => 'Update successfully',
    ],
    'cannot_delete' => 'dangkylaymau could not be deleted',
    'deleted' => 'dangkylaymau deleted',
    'dangkylaymau_information' => 'dangkylaymau information',
    'email' => [
        'header' => 'Email',
        'title' => 'New dangkylaymau from your site',
        'success' => 'Send message successfully!',
        'failed' => 'Can\'t send message on this time, please try again later!',
    ],
    'name.required' => 'Name is required',
    'email.required' => 'Email is required',
    'email.email' => 'The email address is not valid',
    'content.required' => 'Content is required',
    'g-recaptcha-response.required' => 'Please confirm you are not a robot before send message.',
    'g-recaptcha-response.captcha' => 'You are not confirm robot yet.',
    'dangkylaymau_sent_from' => 'This dangkylaymau information sent from',
    'sender' => 'Sender',
    'sender_email' => 'Email',
    'sender_address' => 'Address',
    'sender_phone' => 'Phone',
    'message_content' => 'Message content',
    'sent_from' => 'Email sent from',
    'form_name' => 'Name',
    'form_email' => 'Email',
    'form_address' => 'Address',
    'form_subject' => 'Subject',
    'form_phone' => 'Phone',
    'form_message' => 'Message',
    'confirm_not_robot' => 'Please confirm you are not robot',
    'required_field' => 'The field with (<span style="color: red">*</span>) is required.',
    'send_btn' => 'Send message',
    'mark_as_read' => 'Mark as read',
    'mark_as_unread' => 'Mark as unread',
    'new_msg_notice' => 'You have <span class="bold">:count</span> New Messages',
    'view_all' => 'View all',
    'read' => 'Read',
    'unread' => 'UnRead',
    'phone' => 'Phone',
    'address' => 'Address',
    'message' => 'Message',
    'settings' => [
        'email' => [
            'title' => 'dangkylaymau',
            'description' => 'dangkylaymau email configuration',
            'templates' => [
                'notice_title' => 'Send notice to administrator',
                'notice_description' => 'Email template to send notice to administrator when system get new dangkylaymau',
            ],
        ],
    ],
     'content11' => '<b>LƯU Ý (<span style="color: red">*</span>)<b><br />
    Vui lòng cung cấp đầy đủ thông tin để cho các nhân viên tại bệnh viện dễ dàng liên lạc và lấy máu một cách nhanh nhất.<br />',
    'thanhtoan' => '<br /> <div style="color:red;"><b>Phương thức thanh toán</b><br />
    Khi thanh toán chi phí lấy mẫu xét nghiệm tại nhà của BV Hòa Bình<br />
    Khách hàng cần phải thanh toán bằng tiền mặt ngay sau khi lấy mẫu xét nghiệm.<br />
    <i><b>Tổng giá = Giá gói xét nghiệm + Phí xử lý + Phí km tăng thêm</b></i><br />
     <br />
    Phí km tăng thêm: tính cho km thứ 5 trở đi<br />
    </div>
    ',
];
