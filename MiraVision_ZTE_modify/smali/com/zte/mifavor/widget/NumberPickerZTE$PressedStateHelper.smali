.class Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;
.super Ljava/lang/Object;
.source "NumberPickerZTE.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/NumberPickerZTE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PressedStateHelper"
.end annotation


# static fields
.field public static final BUTTON_DECREMENT:I = 0x2

.field public static final BUTTON_INCREMENT:I = 0x1


# instance fields
.field private final MODE_PRESS:I

.field private final MODE_TAPPED:I

.field private mManagedButton:I

.field private mMode:I

.field final synthetic this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/NumberPickerZTE;)V
    .locals 1

    .prologue
    .line 2345
    iput-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2349
    const/4 v0, 0x1

    iput v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->MODE_PRESS:I

    .line 2350
    const/4 v0, 0x2

    iput v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->MODE_TAPPED:I

    return-void
.end method


# virtual methods
.method public buttonPressDelayed(I)V
    .locals 4
    .param p1, "button"    # I

    .prologue
    .line 2370
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->cancel()V

    .line 2371
    const/4 v0, 0x1

    iput v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->mMode:I

    .line 2372
    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->mManagedButton:I

    .line 2373
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2375
    return-void
.end method

.method public buttonTapped(I)V
    .locals 1
    .param p1, "button"    # I

    .prologue
    .line 2378
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->cancel()V

    .line 2379
    const/4 v0, 0x2

    iput v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->mMode:I

    .line 2380
    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->mManagedButton:I

    .line 2381
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->post(Ljava/lang/Runnable;)Z

    .line 2382
    return-void
.end method

.method public cancel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2356
    iput v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->mMode:I

    .line 2357
    iput v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->mManagedButton:I

    .line 2358
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2359
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1300(Lcom/zte/mifavor/widget/NumberPickerZTE;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2360
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # setter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0, v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1302(Lcom/zte/mifavor/widget/NumberPickerZTE;Z)Z

    .line 2361
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mBottomSelectionDividerBottom:I
    invoke-static {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1400(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v1

    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mRight:I
    invoke-static {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1500(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v2

    iget-object v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mBottom:I
    invoke-static {v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1600(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->invalidate(IIII)V

    .line 2363
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # setter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0, v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1702(Lcom/zte/mifavor/widget/NumberPickerZTE;Z)Z

    .line 2364
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1700(Lcom/zte/mifavor/widget/NumberPickerZTE;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2365
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mRight:I
    invoke-static {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1800(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v1

    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mTopSelectionDividerTop:I
    invoke-static {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1900(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->invalidate(IIII)V

    .line 2367
    :cond_1
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2386
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 2426
    :goto_0
    return-void

    .line 2388
    :pswitch_0
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->mManagedButton:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 2390
    :pswitch_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # setter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0, v5}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1302(Lcom/zte/mifavor/widget/NumberPickerZTE;Z)Z

    .line 2391
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mBottomSelectionDividerBottom:I
    invoke-static {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1400(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v1

    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mRight:I
    invoke-static {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$2000(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v2

    iget-object v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mBottom:I
    invoke-static {v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$2100(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->invalidate(IIII)V

    goto :goto_0

    .line 2396
    :pswitch_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # setter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0, v5}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1702(Lcom/zte/mifavor/widget/NumberPickerZTE;Z)Z

    .line 2397
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mRight:I
    invoke-static {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$2200(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v1

    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mTopSelectionDividerTop:I
    invoke-static {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1900(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->invalidate(IIII)V

    goto :goto_0

    .line 2403
    :pswitch_3
    iget v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->mManagedButton:I

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 2405
    :pswitch_4
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1300(Lcom/zte/mifavor/widget/NumberPickerZTE;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2406
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2409
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # ^= operator for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0, v5}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1380(Lcom/zte/mifavor/widget/NumberPickerZTE;I)Z

    .line 2410
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mBottomSelectionDividerBottom:I
    invoke-static {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1400(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v1

    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mRight:I
    invoke-static {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$2300(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v2

    iget-object v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mBottom:I
    invoke-static {v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$2400(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->invalidate(IIII)V

    goto :goto_0

    .line 2415
    :pswitch_5
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1700(Lcom/zte/mifavor/widget/NumberPickerZTE;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2416
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2419
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # ^= operator for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0, v5}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1780(Lcom/zte/mifavor/widget/NumberPickerZTE;I)Z

    .line 2420
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mRight:I
    invoke-static {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$2500(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v1

    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$PressedStateHelper;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mTopSelectionDividerTop:I
    invoke-static {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1900(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->invalidate(IIII)V

    goto/16 :goto_0

    .line 2386
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 2388
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2403
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
