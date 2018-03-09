
(load-goal '(and (next-to box1 box2)(next-to box2 box3)))

(load-start-state
  '((connects dunimys runi rmys)
    (connects dmysram rmys rram)
    (connects dramhal rram rhal)
    (connects dmyspdp rmys rpdp)
    (connects dpdpclk rpdp rclk)
    (connects dmysclk rmys rclk)
    (connects dramclk rram rclk)
    (connects dclkril rclk rril)
    (connects dunimys rmys runi)
    (connects dmysram rram rmys)
    (connects dramhal rhal rram)
    (connects dmyspdp rpdp rmys)
    (connects dpdpclk rclk rpdp)
    (connects dmysclk rclk rmys)
    (connects dramclk rclk rram)
    (connects dclkril rril rclk)
    (statis dunimys open)
    (statis dmysram open)
    (statis dramhal open)
    (statis dmyspdp open)
    (statis dpdpclk open)
    (statis dmysclk open)
    (statis dramclk open)
    (statis dclkril closed)
    (is-type dunimys door)
    (is-type dmysram door)
    (is-type dramhal door)
    (is-type dmyspdp door)
    (is-type dpdpclk door)
    (is-type dmysclk door)
    (is-type dramclk door)
    (is-type dclkril door)
    (is-type runi room)
    (is-type rmys room)
    (is-type rram room)
    (is-type rhal room)
    (is-type rpdp room)
    (is-type rclk room)
    (is-type rril room)
    (is-type box1 object)
    (is-type box2 object)
    (is-type box3 object)
    (in-room robot rril)
    (in-room box1 rpdp)
    (in-room box2 rpdp)
    (in-room box3 rclk)
    (pushable box1)
    (pushable box2)
    (pushable box3)))
    
