.class public abstract Lcom/zte/mifavor/actionbar/menu/ForwardingListener;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/actionbar/menu/ForwardingListener$1;,
        Lcom/zte/mifavor/actionbar/menu/ForwardingListener$TriggerLongPress;,
        Lcom/zte/mifavor/actionbar/menu/ForwardingListener$DisallowIntercept;
    }
.end annotation


# instance fields
.field private mActivePointerId:I

.field private mDisallowIntercept:Ljava/lang/Runnable;

.field private mForwarding:Z

.field private final mLongPressTimeout:I

.field private final mScaledTouchSlop:F

.field private final mSrc:Landroid/view/View;

.field private final mTapTimeout:I

.field private final mTmpLocation:[I

.field private mTriggerLongPress:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "src"    # Landroid/view/View;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->mTmpLocation:[I

    .line 63
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->mSrc:Landroid/view/View;

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->mScaledTouchSlop:F

    .line 65
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->mTapTimeout:I

    .line 67
    iget v0, p0, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->mTapTimeout:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->mLongPressTimeout:I

    .line 68
    return-void
.end method

.method static synthetic access$200(Lcom/zte/mifavor/actionbar/menu/ForwardingListener;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/actionbar/menu/ForwardingListener;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->mSrc:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/mifavor/actionbar/menu/ForwardingListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/actionbar/menu/ForwardingListener;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->onLongPress()V

    return-void
.end method

.method private clearCallbacks()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->mSrc:Landroid/view/View;

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->mSrc:Landroid/view/View;

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 199
    :cond_1
    return-void
.end method

.method private onLongPress()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 202
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->clearCallbacks()V

    .line 204
    iget-object v9, p0, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->mSrc:Landroid/view/View;

    .line 205
    .local v9, "src":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->isLongClickable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->onForwardingStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v10}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 219
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 220
    .local v0, "now":J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 221
    .local v8, "e":Landroid/view/MotionEvent;
    invoke-virtual {v9, v8}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 222
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 224
    iput-boolean v10, p0, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->mForwarding:Z

    goto :goto_0
.end method

.method private onTouchForwarded(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "srcEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 235
    iget-object v6, p0, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->mSrc:Landroid/view/View;

    .line 236
    .local v6, "src":Landroid/view/View;
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->getPopup()Lcom/zte/mifavor/actionbar/menu/ShowableListMenu;

    move-result-object v5

    .line 237
    .local v5, "popup":Lcom/zte/mifavor/actionbar/menu/ShowableListMenu;
    if-eqz v5, :cond_0

    invoke-interface {v5}, Lcom/zte/mifavor/actionbar/menu/ShowableListMenu;->isShowing()Z

    move-result v9

    if-nez v9, :cond_1

    .line 260
    :cond_0
    :goto_0
    return v8

    .line 241
    :cond_1
    invoke-interface {v5}, Lcom/zte/mifavor/actionbar/menu/ShowableListMenu;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Lcom/zte/mifavor/actionbar/menu/DropDownListView;

    .line 242
    .local v1, "dst":Lcom/zte/mifavor/actionbar/menu/DropDownListView;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/menu/DropDownListView;->isShown()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 247
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 248
    .local v2, "dstEvent":Landroid/view/MotionEvent;
    invoke-direct {p0, v6, v2}, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->toGlobalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 249
    invoke-direct {p0, v1, v2}, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->toLocalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 252
    iget v9, p0, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->mActivePointerId:I

    invoke-virtual {v1, v2, v9}, Lcom/zte/mifavor/actionbar/menu/DropDownListView;->onForwardedEvent(Landroid/view/MotionEvent;I)Z

    move-result v3

    .line 253
    .local v3, "handled":Z
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 256
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 257
    .local v0, "action":I
    if-eq v0, v7, :cond_2

    const/4 v9, 0x3

    if-eq v0, v9, :cond_2

    move v4, v7

    .line 260
    .local v4, "keepForwarding":Z
    :goto_1
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    :goto_2
    move v8, v7

    goto :goto_0

    .end local v4    # "keepForwarding":Z
    :cond_2
    move v4, v8

    .line 257
    goto :goto_1

    .restart local v4    # "keepForwarding":Z
    :cond_3
    move v7, v8

    .line 260
    goto :goto_2
.end method

.method private onTouchObserved(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "srcEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 146
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->mSrc:Landroid/view/View;

    .line 147
    .local v2, "src":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 188
    :cond_0
    :goto_0
    return v5

    .line 151
    :cond_1
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 152
    .local v0, "actionMasked":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 154
    :pswitch_0
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->mActivePointerId:I

    .line 156
    iget-object v6, p0, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-nez v6, :cond_2

    .line 157
    new-instance v6, Lcom/zte/mifavor/actionbar/menu/ForwardingListener$DisallowIntercept;

    invoke-direct {v6, p0, v10}, Lcom/zte/mifavor/actionbar/menu/ForwardingListener$DisallowIntercept;-><init>(Lcom/zte/mifavor/actionbar/menu/ForwardingListener;Lcom/zte/mifavor/actionbar/menu/ForwardingListener$1;)V

    iput-object v6, p0, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    .line 159
    :cond_2
    iget-object v6, p0, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    iget v7, p0, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->mTapTimeout:I

    int-to-long v8, v7

    invoke-virtual {v2, v6, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 161
    iget-object v6, p0, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    if-nez v6, :cond_3

    .line 162
    new-instance v6, Lcom/zte/mifavor/actionbar/menu/ForwardingListener$TriggerLongPress;

    invoke-direct {v6, p0, v10}, Lcom/zte/mifavor/actionbar/menu/ForwardingListener$TriggerLongPress;-><init>(Lcom/zte/mifavor/actionbar/menu/ForwardingListener;Lcom/zte/mifavor/actionbar/menu/ForwardingListener$1;)V

    iput-object v6, p0, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    .line 164
    :cond_3
    iget-object v6, p0, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    iget v7, p0, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->mLongPressTimeout:I

    int-to-long v8, v7

    invoke-virtual {v2, v6, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 167
    :pswitch_1
    iget v7, p0, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->mActivePointerId:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 168
    .local v1, "activePointerIndex":I
    if-ltz v1, :cond_0

    .line 169
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 170
    .local v3, "x":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 173
    .local v4, "y":F
    iget v7, p0, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->mScaledTouchSlop:F

    invoke-static {v2, v3, v4, v7}, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->pointInView(Landroid/view/View;FFF)Z

    move-result v7

    if-nez v7, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->clearCallbacks()V

    .line 177
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    move v5, v6

    .line 178
    goto :goto_0

    .line 184
    .end local v1    # "activePointerIndex":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_2
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->clearCallbacks()V

    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static pointInView(Landroid/view/View;FFF)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "localX"    # F
    .param p2, "localY"    # F
    .param p3, "slop"    # F

    .prologue
    .line 264
    neg-float v0, p3

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    neg-float v0, p3

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toGlobalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 285
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->mTmpLocation:[I

    .line 286
    .local v0, "loc":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 287
    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    aget v2, v0, v3

    int-to-float v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 288
    return v3
.end method

.method private toLocalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 274
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->mTmpLocation:[I

    .line 275
    .local v0, "loc":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 276
    const/4 v1, 0x0

    aget v1, v0, v1

    neg-int v1, v1

    int-to-float v1, v1

    aget v2, v0, v3

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 277
    return v3
.end method


# virtual methods
.method public abstract getPopup()Lcom/zte/mifavor/actionbar/menu/ShowableListMenu;
.end method

.method protected onForwardingStarted()Z
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->getPopup()Lcom/zte/mifavor/actionbar/menu/ShowableListMenu;

    move-result-object v0

    .line 116
    .local v0, "popup":Lcom/zte/mifavor/actionbar/menu/ShowableListMenu;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/zte/mifavor/actionbar/menu/ShowableListMenu;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    invoke-interface {v0}, Lcom/zte/mifavor/actionbar/menu/ShowableListMenu;->show()V

    .line 119
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onForwardingStopped()Z
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->getPopup()Lcom/zte/mifavor/actionbar/menu/ShowableListMenu;

    move-result-object v0

    .line 133
    .local v0, "popup":Lcom/zte/mifavor/actionbar/menu/ShowableListMenu;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/zte/mifavor/actionbar/menu/ShowableListMenu;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    invoke-interface {v0}, Lcom/zte/mifavor/actionbar/menu/ShowableListMenu;->dismiss()V

    .line 136
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v7, 0x0

    .line 84
    iget-boolean v10, p0, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->mForwarding:Z

    .line 86
    .local v10, "wasForwarding":Z
    if-eqz v10, :cond_5

    .line 87
    invoke-direct {p0, p2}, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->onTouchForwarded(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->onForwardingStopped()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_0
    move v9, v11

    .line 101
    .local v9, "forwarding":Z
    :cond_1
    :goto_0
    iput-boolean v9, p0, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->mForwarding:Z

    .line 102
    if-nez v9, :cond_2

    if-eqz v10, :cond_3

    :cond_2
    move v7, v11

    :cond_3
    return v7

    .end local v9    # "forwarding":Z
    :cond_4
    move v9, v7

    .line 87
    goto :goto_0

    .line 89
    :cond_5
    invoke-direct {p0, p2}, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->onTouchObserved(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->onForwardingStarted()Z

    move-result v2

    if-eqz v2, :cond_6

    move v9, v11

    .line 91
    .restart local v9    # "forwarding":Z
    :goto_1
    if-eqz v9, :cond_1

    .line 93
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 94
    .local v0, "now":J
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 96
    .local v8, "e":Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->mSrc:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 97
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .end local v0    # "now":J
    .end local v8    # "e":Landroid/view/MotionEvent;
    .end local v9    # "forwarding":Z
    :cond_6
    move v9, v7

    .line 89
    goto :goto_1
.end method
