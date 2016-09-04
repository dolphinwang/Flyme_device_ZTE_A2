.class Lcom/android/mipop/ChangeKeyActivity$2;
.super Ljava/lang/Object;
.source "ChangeKeyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mipop/ChangeKeyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mipop/ChangeKeyActivity;


# direct methods
.method constructor <init>(Lcom/android/mipop/ChangeKeyActivity;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/mipop/ChangeKeyActivity$2;->this$0:Lcom/android/mipop/ChangeKeyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v2, 0x7f0206fa

    const v1, 0x7f0206fb

    .line 337
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 391
    :goto_0
    return-void

    .line 339
    :sswitch_0
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity$2;->this$0:Lcom/android/mipop/ChangeKeyActivity;

    # getter for: Lcom/android/mipop/ChangeKeyActivity;->upImageViewCycle:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/mipop/ChangeKeyActivity;->access$200(Lcom/android/mipop/ChangeKeyActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 340
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity$2;->this$0:Lcom/android/mipop/ChangeKeyActivity;

    # getter for: Lcom/android/mipop/ChangeKeyActivity;->leftImageViewCycle:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/mipop/ChangeKeyActivity;->access$300(Lcom/android/mipop/ChangeKeyActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 341
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity$2;->this$0:Lcom/android/mipop/ChangeKeyActivity;

    # getter for: Lcom/android/mipop/ChangeKeyActivity;->midImageViewCycle:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/mipop/ChangeKeyActivity;->access$400(Lcom/android/mipop/ChangeKeyActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 342
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity$2;->this$0:Lcom/android/mipop/ChangeKeyActivity;

    # getter for: Lcom/android/mipop/ChangeKeyActivity;->rightImageViewCycle:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/mipop/ChangeKeyActivity;->access$500(Lcom/android/mipop/ChangeKeyActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 343
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity$2;->this$0:Lcom/android/mipop/ChangeKeyActivity;

    # getter for: Lcom/android/mipop/ChangeKeyActivity;->downImageViewCycle:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/mipop/ChangeKeyActivity;->access$600(Lcom/android/mipop/ChangeKeyActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 345
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity$2;->this$0:Lcom/android/mipop/ChangeKeyActivity;

    const-string v1, "UP_KEY"

    # invokes: Lcom/android/mipop/ChangeKeyActivity;->update(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/mipop/ChangeKeyActivity;->access$700(Lcom/android/mipop/ChangeKeyActivity;Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity$2;->this$0:Lcom/android/mipop/ChangeKeyActivity;

    # invokes: Lcom/android/mipop/ChangeKeyActivity;->upKeyAlpha()V
    invoke-static {v0}, Lcom/android/mipop/ChangeKeyActivity;->access$800(Lcom/android/mipop/ChangeKeyActivity;)V

    goto :goto_0

    .line 349
    :sswitch_1
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity$2;->this$0:Lcom/android/mipop/ChangeKeyActivity;

    # getter for: Lcom/android/mipop/ChangeKeyActivity;->upImageViewCycle:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/mipop/ChangeKeyActivity;->access$200(Lcom/android/mipop/ChangeKeyActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 350
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity$2;->this$0:Lcom/android/mipop/ChangeKeyActivity;

    # getter for: Lcom/android/mipop/ChangeKeyActivity;->leftImageViewCycle:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/mipop/ChangeKeyActivity;->access$300(Lcom/android/mipop/ChangeKeyActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 351
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity$2;->this$0:Lcom/android/mipop/ChangeKeyActivity;

    # getter for: Lcom/android/mipop/ChangeKeyActivity;->midImageViewCycle:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/mipop/ChangeKeyActivity;->access$400(Lcom/android/mipop/ChangeKeyActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 352
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity$2;->this$0:Lcom/android/mipop/ChangeKeyActivity;

    # getter for: Lcom/android/mipop/ChangeKeyActivity;->rightImageViewCycle:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/mipop/ChangeKeyActivity;->access$500(Lcom/android/mipop/ChangeKeyActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 353
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity$2;->this$0:Lcom/android/mipop/ChangeKeyActivity;

    # getter for: Lcom/android/mipop/ChangeKeyActivity;->downImageViewCycle:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/mipop/ChangeKeyActivity;->access$600(Lcom/android/mipop/ChangeKeyActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 355
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity$2;->this$0:Lcom/android/mipop/ChangeKeyActivity;

    const-string v1, "LEFT_KEY"

    # invokes: Lcom/android/mipop/ChangeKeyActivity;->update(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/mipop/ChangeKeyActivity;->access$700(Lcom/android/mipop/ChangeKeyActivity;Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity$2;->this$0:Lcom/android/mipop/ChangeKeyActivity;

    # invokes: Lcom/android/mipop/ChangeKeyActivity;->leftKeyAlpha()V
    invoke-static {v0}, Lcom/android/mipop/ChangeKeyActivity;->access$900(Lcom/android/mipop/ChangeKeyActivity;)V

    goto :goto_0

    .line 359
    :sswitch_2
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity$2;->this$0:Lcom/android/mipop/ChangeKeyActivity;

    # getter for: Lcom/android/mipop/ChangeKeyActivity;->upImageViewCycle:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/mipop/ChangeKeyActivity;->access$200(Lcom/android/mipop/ChangeKeyActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 360
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity$2;->this$0:Lcom/android/mipop/ChangeKeyActivity;

    # getter for: Lcom/android/mipop/ChangeKeyActivity;->leftImageViewCycle:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/mipop/ChangeKeyActivity;->access$300(Lcom/android/mipop/ChangeKeyActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 361
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity$2;->this$0:Lcom/android/mipop/ChangeKeyActivity;

    # getter for: Lcom/android/mipop/ChangeKeyActivity;->midImageViewCycle:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/mipop/ChangeKeyActivity;->access$400(Lcom/android/mipop/ChangeKeyActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 362
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity$2;->this$0:Lcom/android/mipop/ChangeKeyActivity;

    # getter for: Lcom/android/mipop/ChangeKeyActivity;->rightImageViewCycle:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/mipop/ChangeKeyActivity;->access$500(Lcom/android/mipop/ChangeKeyActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 363
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity$2;->this$0:Lcom/android/mipop/ChangeKeyActivity;

    # getter for: Lcom/android/mipop/ChangeKeyActivity;->downImageViewCycle:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/mipop/ChangeKeyActivity;->access$600(Lcom/android/mipop/ChangeKeyActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 365
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity$2;->this$0:Lcom/android/mipop/ChangeKeyActivity;

    const-string v1, "MID_KEY"

    # invokes: Lcom/android/mipop/ChangeKeyActivity;->update(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/mipop/ChangeKeyActivity;->access$700(Lcom/android/mipop/ChangeKeyActivity;Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity$2;->this$0:Lcom/android/mipop/ChangeKeyActivity;

    # invokes: Lcom/android/mipop/ChangeKeyActivity;->midKeyAlpha()V
    invoke-static {v0}, Lcom/android/mipop/ChangeKeyActivity;->access$1000(Lcom/android/mipop/ChangeKeyActivity;)V

    goto/16 :goto_0

    .line 369
    :sswitch_3
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity$2;->this$0:Lcom/android/mipop/ChangeKeyActivity;

    # getter for: Lcom/android/mipop/ChangeKeyActivity;->upImageViewCycle:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/mipop/ChangeKeyActivity;->access$200(Lcom/android/mipop/ChangeKeyActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 370
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity$2;->this$0:Lcom/android/mipop/ChangeKeyActivity;

    # getter for: Lcom/android/mipop/ChangeKeyActivity;->leftImageViewCycle:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/mipop/ChangeKeyActivity;->access$300(Lcom/android/mipop/ChangeKeyActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 371
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity$2;->this$0:Lcom/android/mipop/ChangeKeyActivity;

    # getter for: Lcom/android/mipop/ChangeKeyActivity;->midImageViewCycle:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/mipop/ChangeKeyActivity;->access$400(Lcom/android/mipop/ChangeKeyActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 372
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity$2;->this$0:Lcom/android/mipop/ChangeKeyActivity;

    # getter for: Lcom/android/mipop/ChangeKeyActivity;->rightImageViewCycle:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/mipop/ChangeKeyActivity;->access$500(Lcom/android/mipop/ChangeKeyActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 373
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity$2;->this$0:Lcom/android/mipop/ChangeKeyActivity;

    # getter for: Lcom/android/mipop/ChangeKeyActivity;->downImageViewCycle:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/mipop/ChangeKeyActivity;->access$600(Lcom/android/mipop/ChangeKeyActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 375
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity$2;->this$0:Lcom/android/mipop/ChangeKeyActivity;

    const-string v1, "RIGHT_KEY"

    # invokes: Lcom/android/mipop/ChangeKeyActivity;->update(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/mipop/ChangeKeyActivity;->access$700(Lcom/android/mipop/ChangeKeyActivity;Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity$2;->this$0:Lcom/android/mipop/ChangeKeyActivity;

    # invokes: Lcom/android/mipop/ChangeKeyActivity;->rightKeyAlpha()V
    invoke-static {v0}, Lcom/android/mipop/ChangeKeyActivity;->access$1100(Lcom/android/mipop/ChangeKeyActivity;)V

    goto/16 :goto_0

    .line 379
    :sswitch_4
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity$2;->this$0:Lcom/android/mipop/ChangeKeyActivity;

    # getter for: Lcom/android/mipop/ChangeKeyActivity;->upImageViewCycle:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/mipop/ChangeKeyActivity;->access$200(Lcom/android/mipop/ChangeKeyActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 380
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity$2;->this$0:Lcom/android/mipop/ChangeKeyActivity;

    # getter for: Lcom/android/mipop/ChangeKeyActivity;->leftImageViewCycle:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/mipop/ChangeKeyActivity;->access$300(Lcom/android/mipop/ChangeKeyActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 381
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity$2;->this$0:Lcom/android/mipop/ChangeKeyActivity;

    # getter for: Lcom/android/mipop/ChangeKeyActivity;->midImageViewCycle:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/mipop/ChangeKeyActivity;->access$400(Lcom/android/mipop/ChangeKeyActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 382
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity$2;->this$0:Lcom/android/mipop/ChangeKeyActivity;

    # getter for: Lcom/android/mipop/ChangeKeyActivity;->rightImageViewCycle:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/mipop/ChangeKeyActivity;->access$500(Lcom/android/mipop/ChangeKeyActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 383
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity$2;->this$0:Lcom/android/mipop/ChangeKeyActivity;

    # getter for: Lcom/android/mipop/ChangeKeyActivity;->downImageViewCycle:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/mipop/ChangeKeyActivity;->access$600(Lcom/android/mipop/ChangeKeyActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 385
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity$2;->this$0:Lcom/android/mipop/ChangeKeyActivity;

    const-string v1, "DOWN_KEY"

    # invokes: Lcom/android/mipop/ChangeKeyActivity;->update(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/mipop/ChangeKeyActivity;->access$700(Lcom/android/mipop/ChangeKeyActivity;Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/android/mipop/ChangeKeyActivity$2;->this$0:Lcom/android/mipop/ChangeKeyActivity;

    # invokes: Lcom/android/mipop/ChangeKeyActivity;->downKeyAlpha()V
    invoke-static {v0}, Lcom/android/mipop/ChangeKeyActivity;->access$1200(Lcom/android/mipop/ChangeKeyActivity;)V

    goto/16 :goto_0

    .line 337
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0600bc -> :sswitch_0
        0x7f0600bf -> :sswitch_1
        0x7f0600c2 -> :sswitch_2
        0x7f0600c5 -> :sswitch_3
        0x7f0600c8 -> :sswitch_4
    .end sparse-switch
.end method
