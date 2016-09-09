.class Lcom/zte/miravision/MiravisionActivity$3;
.super Ljava/lang/Object;
.source "MiravisionActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/miravision/MiravisionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/miravision/MiravisionActivity;


# direct methods
.method constructor <init>(Lcom/zte/miravision/MiravisionActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/miravision/MiravisionActivity$3;->this$0:Lcom/zte/miravision/MiravisionActivity;

    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const/4 v1, 0x2

    .line 493
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 495
    :sswitch_0
    if-eqz p3, :cond_0

    .line 497
    invoke-static {v1}, Lcom/mediatek/miravision/setting/MiraVisionJni;->nativeSetPictureMode(I)Z

    .line 498
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 499
    iget-object v1, p0, Lcom/zte/miravision/MiravisionActivity$3;->this$0:Lcom/zte/miravision/MiravisionActivity;

    # getter for: Lcom/zte/miravision/MiravisionActivity;->mGammaRange:Lcom/mediatek/miravision/setting/MiraVisionJni$Range;
    invoke-static {v1}, Lcom/zte/miravision/MiravisionActivity;->access$15(Lcom/zte/miravision/MiravisionActivity;)Lcom/mediatek/miravision/setting/MiraVisionJni$Range;

    move-result-object v1

    iget v1, v1, Lcom/mediatek/miravision/setting/MiraVisionJni$Range;->min:I

    .line 498
    sub-int/2addr v0, v1

    invoke-static {v0}, Lcom/mediatek/miravision/setting/MiraVisionJni;->setGammaIndex(I)V

    .line 501
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity$3;->this$0:Lcom/zte/miravision/MiravisionActivity;

    iget-object v1, p0, Lcom/zte/miravision/MiravisionActivity$3;->this$0:Lcom/zte/miravision/MiravisionActivity;

    # getter for: Lcom/zte/miravision/MiravisionActivity;->mZidingyiBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;
    invoke-static {v1}, Lcom/zte/miravision/MiravisionActivity;->access$5(Lcom/zte/miravision/MiravisionActivity;)Lcom/zte/mifavor/widget/RadioButtonZTE;

    move-result-object v1

    # invokes: Lcom/zte/miravision/MiravisionActivity;->updateRadioButtons(Lcom/zte/mifavor/widget/RadioButtonZTE;)V
    invoke-static {v0, v1}, Lcom/zte/miravision/MiravisionActivity;->access$1(Lcom/zte/miravision/MiravisionActivity;Lcom/zte/mifavor/widget/RadioButtonZTE;)V

    goto :goto_0

    .line 505
    :sswitch_1
    if-eqz p3, :cond_0

    .line 507
    invoke-static {v1}, Lcom/mediatek/miravision/setting/MiraVisionJni;->nativeSetPictureMode(I)Z

    .line 508
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 509
    iget-object v1, p0, Lcom/zte/miravision/MiravisionActivity$3;->this$0:Lcom/zte/miravision/MiravisionActivity;

    # getter for: Lcom/zte/miravision/MiravisionActivity;->mSharpnessRange:Lcom/mediatek/miravision/setting/MiraVisionJni$Range;
    invoke-static {v1}, Lcom/zte/miravision/MiravisionActivity;->access$16(Lcom/zte/miravision/MiravisionActivity;)Lcom/mediatek/miravision/setting/MiraVisionJni$Range;

    move-result-object v1

    iget v1, v1, Lcom/mediatek/miravision/setting/MiraVisionJni$Range;->min:I

    .line 508
    sub-int/2addr v0, v1

    invoke-static {v0}, Lcom/mediatek/miravision/setting/MiraVisionJni;->setSharpnessIndex(I)V

    .line 511
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity$3;->this$0:Lcom/zte/miravision/MiravisionActivity;

    iget-object v1, p0, Lcom/zte/miravision/MiravisionActivity$3;->this$0:Lcom/zte/miravision/MiravisionActivity;

    # getter for: Lcom/zte/miravision/MiravisionActivity;->mZidingyiBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;
    invoke-static {v1}, Lcom/zte/miravision/MiravisionActivity;->access$5(Lcom/zte/miravision/MiravisionActivity;)Lcom/zte/mifavor/widget/RadioButtonZTE;

    move-result-object v1

    # invokes: Lcom/zte/miravision/MiravisionActivity;->updateRadioButtons(Lcom/zte/mifavor/widget/RadioButtonZTE;)V
    invoke-static {v0, v1}, Lcom/zte/miravision/MiravisionActivity;->access$1(Lcom/zte/miravision/MiravisionActivity;Lcom/zte/mifavor/widget/RadioButtonZTE;)V

    .line 512
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity$3;->this$0:Lcom/zte/miravision/MiravisionActivity;

    # invokes: Lcom/zte/miravision/MiravisionActivity;->setImageBitmap()V
    invoke-static {v0}, Lcom/zte/miravision/MiravisionActivity;->access$14(Lcom/zte/miravision/MiravisionActivity;)V

    goto :goto_0

    .line 516
    :sswitch_2
    if-eqz p3, :cond_0

    .line 518
    invoke-static {v1}, Lcom/mediatek/miravision/setting/MiraVisionJni;->nativeSetPictureMode(I)Z

    .line 519
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 520
    iget-object v1, p0, Lcom/zte/miravision/MiravisionActivity$3;->this$0:Lcom/zte/miravision/MiravisionActivity;

    # getter for: Lcom/zte/miravision/MiravisionActivity;->mSaturationRange:Lcom/mediatek/miravision/setting/MiraVisionJni$Range;
    invoke-static {v1}, Lcom/zte/miravision/MiravisionActivity;->access$17(Lcom/zte/miravision/MiravisionActivity;)Lcom/mediatek/miravision/setting/MiraVisionJni$Range;

    move-result-object v1

    iget v1, v1, Lcom/mediatek/miravision/setting/MiraVisionJni$Range;->min:I

    .line 519
    sub-int/2addr v0, v1

    invoke-static {v0}, Lcom/mediatek/miravision/setting/MiraVisionJni;->setSaturationIndex(I)V

    .line 522
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity$3;->this$0:Lcom/zte/miravision/MiravisionActivity;

    iget-object v1, p0, Lcom/zte/miravision/MiravisionActivity$3;->this$0:Lcom/zte/miravision/MiravisionActivity;

    # getter for: Lcom/zte/miravision/MiravisionActivity;->mZidingyiBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;
    invoke-static {v1}, Lcom/zte/miravision/MiravisionActivity;->access$5(Lcom/zte/miravision/MiravisionActivity;)Lcom/zte/mifavor/widget/RadioButtonZTE;

    move-result-object v1

    # invokes: Lcom/zte/miravision/MiravisionActivity;->updateRadioButtons(Lcom/zte/mifavor/widget/RadioButtonZTE;)V
    invoke-static {v0, v1}, Lcom/zte/miravision/MiravisionActivity;->access$1(Lcom/zte/miravision/MiravisionActivity;Lcom/zte/mifavor/widget/RadioButtonZTE;)V

    goto :goto_0

    .line 526
    :sswitch_3
    if-eqz p3, :cond_0

    .line 528
    invoke-static {v1}, Lcom/mediatek/miravision/setting/MiraVisionJni;->nativeSetPictureMode(I)Z

    .line 529
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 530
    iget-object v1, p0, Lcom/zte/miravision/MiravisionActivity$3;->this$0:Lcom/zte/miravision/MiravisionActivity;

    # getter for: Lcom/zte/miravision/MiravisionActivity;->mContrastRange:Lcom/mediatek/miravision/setting/MiraVisionJni$Range;
    invoke-static {v1}, Lcom/zte/miravision/MiravisionActivity;->access$18(Lcom/zte/miravision/MiravisionActivity;)Lcom/mediatek/miravision/setting/MiraVisionJni$Range;

    move-result-object v1

    iget v1, v1, Lcom/mediatek/miravision/setting/MiraVisionJni$Range;->min:I

    .line 529
    sub-int/2addr v0, v1

    invoke-static {v0}, Lcom/mediatek/miravision/setting/MiraVisionJni;->setContrastIndex(I)V

    .line 532
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity$3;->this$0:Lcom/zte/miravision/MiravisionActivity;

    iget-object v1, p0, Lcom/zte/miravision/MiravisionActivity$3;->this$0:Lcom/zte/miravision/MiravisionActivity;

    # getter for: Lcom/zte/miravision/MiravisionActivity;->mZidingyiBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;
    invoke-static {v1}, Lcom/zte/miravision/MiravisionActivity;->access$5(Lcom/zte/miravision/MiravisionActivity;)Lcom/zte/mifavor/widget/RadioButtonZTE;

    move-result-object v1

    # invokes: Lcom/zte/miravision/MiravisionActivity;->updateRadioButtons(Lcom/zte/mifavor/widget/RadioButtonZTE;)V
    invoke-static {v0, v1}, Lcom/zte/miravision/MiravisionActivity;->access$1(Lcom/zte/miravision/MiravisionActivity;Lcom/zte/mifavor/widget/RadioButtonZTE;)V

    goto/16 :goto_0

    .line 493
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f060070 -> :sswitch_2
        0x7f060075 -> :sswitch_0
        0x7f06007a -> :sswitch_1
        0x7f06007f -> :sswitch_3
    .end sparse-switch
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 487
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 481
    return-void
.end method
