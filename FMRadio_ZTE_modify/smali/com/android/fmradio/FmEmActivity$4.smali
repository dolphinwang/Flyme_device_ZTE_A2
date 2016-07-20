.class Lcom/android/fmradio/FmEmActivity$4;
.super Landroid/os/Handler;
.source "FmEmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fmradio/FmEmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fmradio/FmEmActivity;


# direct methods
.method constructor <init>(Lcom/android/fmradio/FmEmActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/fmradio/FmEmActivity$4;->this$0:Lcom/android/fmradio/FmEmActivity;

    .line 554
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    .line 556
    const-string v3, "FmRx/EM"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ">>> handleMessage what: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v3, p0, Lcom/android/fmradio/FmEmActivity$4;->this$0:Lcom/android/fmradio/FmEmActivity;

    # getter for: Lcom/android/fmradio/FmEmActivity;->mIsDestroying:Z
    invoke-static {v3}, Lcom/android/fmradio/FmEmActivity;->access$53(Lcom/android/fmradio/FmEmActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 558
    const-string v3, "FmRx/EM"

    const-string v4, "Warning: app is being destroyed."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const-string v3, "FmRx/EM"

    const-string v4, "<<< handleMessage"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :goto_0
    return-void

    .line 563
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 621
    const-string v3, "FmRx/EM"

    const-string v4, "invalid view id"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_1
    :goto_1
    const-string v3, "FmRx/EM"

    const-string v4, "<<< handleMessage"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 565
    :sswitch_0
    iget-object v3, p0, Lcom/android/fmradio/FmEmActivity$4;->this$0:Lcom/android/fmradio/FmEmActivity;

    # getter for: Lcom/android/fmradio/FmEmActivity;->mTextChipID:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/fmradio/FmEmActivity;->access$54(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/fmradio/FmEmActivity$4;->this$0:Lcom/android/fmradio/FmEmActivity;

    invoke-virtual {v4}, Lcom/android/fmradio/FmEmActivity;->getChipId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    iget-object v3, p0, Lcom/android/fmradio/FmEmActivity$4;->this$0:Lcom/android/fmradio/FmEmActivity;

    # getter for: Lcom/android/fmradio/FmEmActivity;->mTextECOVersion:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/fmradio/FmEmActivity;->access$55(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/fmradio/FmEmActivity$4;->this$0:Lcom/android/fmradio/FmEmActivity;

    invoke-virtual {v4}, Lcom/android/fmradio/FmEmActivity;->getEcoVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 567
    iget-object v3, p0, Lcom/android/fmradio/FmEmActivity$4;->this$0:Lcom/android/fmradio/FmEmActivity;

    # getter for: Lcom/android/fmradio/FmEmActivity;->mTextPatchVersion:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/fmradio/FmEmActivity;->access$56(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/fmradio/FmEmActivity$4;->this$0:Lcom/android/fmradio/FmEmActivity;

    invoke-virtual {v4}, Lcom/android/fmradio/FmEmActivity;->getPatchVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    iget-object v3, p0, Lcom/android/fmradio/FmEmActivity$4;->this$0:Lcom/android/fmradio/FmEmActivity;

    # getter for: Lcom/android/fmradio/FmEmActivity;->mTextDSPVersion:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/fmradio/FmEmActivity;->access$57(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/fmradio/FmEmActivity$4;->this$0:Lcom/android/fmradio/FmEmActivity;

    invoke-virtual {v4}, Lcom/android/fmradio/FmEmActivity;->getDspVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 571
    :sswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 572
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/fmradio/FmEmActivity$4;->this$0:Lcom/android/fmradio/FmEmActivity;

    # getter for: Lcom/android/fmradio/FmEmActivity;->mTextRdsBler:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/fmradio/FmEmActivity;->access$58(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "RDS_BLER_STRING"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    iget-object v3, p0, Lcom/android/fmradio/FmEmActivity$4;->this$0:Lcom/android/fmradio/FmEmActivity;

    # getter for: Lcom/android/fmradio/FmEmActivity;->mTextRssi:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/fmradio/FmEmActivity;->access$59(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "RDS_RSSI_STRING"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    iget-object v3, p0, Lcom/android/fmradio/FmEmActivity$4;->this$0:Lcom/android/fmradio/FmEmActivity;

    # getter for: Lcom/android/fmradio/FmEmActivity;->mTextStereoMono:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/fmradio/FmEmActivity;->access$60(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "RDS_STEREMONO_STRING"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 575
    iget-object v3, p0, Lcom/android/fmradio/FmEmActivity$4;->this$0:Lcom/android/fmradio/FmEmActivity;

    # getter for: Lcom/android/fmradio/FmEmActivity;->mTextCapArray:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/fmradio/FmEmActivity;->access$61(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "RDS_CAPARRAY_STRING"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 579
    .end local v0    # "bundle":Landroid/os/Bundle;
    :sswitch_2
    iget-object v3, p0, Lcom/android/fmradio/FmEmActivity$4;->this$0:Lcom/android/fmradio/FmEmActivity;

    # invokes: Lcom/android/fmradio/FmEmActivity;->isSpeakerUsed()Z
    invoke-static {v3}, Lcom/android/fmradio/FmEmActivity;->access$62(Lcom/android/fmradio/FmEmActivity;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 581
    iget-object v3, p0, Lcom/android/fmradio/FmEmActivity$4;->this$0:Lcom/android/fmradio/FmEmActivity;

    # getter for: Lcom/android/fmradio/FmEmActivity;->mRgAntenna:Landroid/widget/RadioGroup;
    invoke-static {v3}, Lcom/android/fmradio/FmEmActivity;->access$63(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/RadioGroup;

    move-result-object v3

    const v4, 0x7f060077

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 586
    :goto_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 587
    .restart local v0    # "bundle":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/fmradio/FmEmActivity$4;->this$0:Lcom/android/fmradio/FmEmActivity;

    const-string v4, "key_is_power_up"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/android/fmradio/FmEmActivity;->access$47(Lcom/android/fmradio/FmEmActivity;Z)V

    .line 588
    iget-object v3, p0, Lcom/android/fmradio/FmEmActivity$4;->this$0:Lcom/android/fmradio/FmEmActivity;

    # getter for: Lcom/android/fmradio/FmEmActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/fmradio/FmEmActivity;->access$36(Lcom/android/fmradio/FmEmActivity;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 589
    iget-object v3, p0, Lcom/android/fmradio/FmEmActivity$4;->this$0:Lcom/android/fmradio/FmEmActivity;

    # invokes: Lcom/android/fmradio/FmEmActivity;->refreshTextStatus(Z)V
    invoke-static {v3, v6}, Lcom/android/fmradio/FmEmActivity;->access$41(Lcom/android/fmradio/FmEmActivity;Z)V

    goto/16 :goto_1

    .line 584
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_2
    iget-object v3, p0, Lcom/android/fmradio/FmEmActivity$4;->this$0:Lcom/android/fmradio/FmEmActivity;

    # getter for: Lcom/android/fmradio/FmEmActivity;->mRgAntenna:Landroid/widget/RadioGroup;
    invoke-static {v3}, Lcom/android/fmradio/FmEmActivity;->access$63(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/RadioGroup;

    move-result-object v3

    const v4, 0x7f060078

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_2

    .line 593
    :sswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 594
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v3, "key_is_switch_antenna"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 595
    .local v2, "isSwitch":Z
    if-eqz v2, :cond_1

    .line 597
    const-string v3, "FmRx/EM"

    const-string v4, "mHandler. switch anntenna ok"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 601
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "isSwitch":Z
    :sswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 602
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v3, "key_tune_to_station"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    .line 603
    .local v1, "frequency":F
    iget-object v3, p0, Lcom/android/fmradio/FmEmActivity$4;->this$0:Lcom/android/fmradio/FmEmActivity;

    invoke-static {v1}, Lcom/android/fmradio/FmUtils;->computeStation(F)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/fmradio/FmEmActivity;->access$44(Lcom/android/fmradio/FmEmActivity;I)V

    .line 606
    iget-object v3, p0, Lcom/android/fmradio/FmEmActivity$4;->this$0:Lcom/android/fmradio/FmEmActivity;

    # invokes: Lcom/android/fmradio/FmEmActivity;->refreshTextStatus(Z)V
    invoke-static {v3, v6}, Lcom/android/fmradio/FmEmActivity;->access$41(Lcom/android/fmradio/FmEmActivity;Z)V

    goto/16 :goto_1

    .line 611
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "frequency":F
    :sswitch_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 612
    .restart local v0    # "bundle":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/fmradio/FmEmActivity$4;->this$0:Lcom/android/fmradio/FmEmActivity;

    const-string v4, "key_ps_info"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/fmradio/FmEmActivity;->access$50(Lcom/android/fmradio/FmEmActivity;Ljava/lang/String;)V

    .line 613
    iget-object v3, p0, Lcom/android/fmradio/FmEmActivity$4;->this$0:Lcom/android/fmradio/FmEmActivity;

    const-string v4, "key_rt_info"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/fmradio/FmEmActivity;->access$52(Lcom/android/fmradio/FmEmActivity;Ljava/lang/String;)V

    .line 614
    iget-object v3, p0, Lcom/android/fmradio/FmEmActivity$4;->this$0:Lcom/android/fmradio/FmEmActivity;

    # invokes: Lcom/android/fmradio/FmEmActivity;->showRDS()V
    invoke-static {v3}, Lcom/android/fmradio/FmEmActivity;->access$64(Lcom/android/fmradio/FmEmActivity;)V

    goto/16 :goto_1

    .line 617
    .end local v0    # "bundle":Landroid/os/Bundle;
    :sswitch_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 618
    .restart local v0    # "bundle":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/fmradio/FmEmActivity$4;->this$0:Lcom/android/fmradio/FmEmActivity;

    const-string v4, "key_rds_station"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/fmradio/FmEmActivity;->access$44(Lcom/android/fmradio/FmEmActivity;I)V

    goto/16 :goto_1

    .line 563
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x6 -> :sswitch_1
        0x7 -> :sswitch_0
        0x9 -> :sswitch_2
        0xf -> :sswitch_4
        0x100010 -> :sswitch_6
        0x100011 -> :sswitch_5
        0x100100 -> :sswitch_5
    .end sparse-switch
.end method
