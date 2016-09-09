.class Lcom/zte/miravision/MiravisionActivity$2;
.super Ljava/lang/Object;
.source "MiravisionActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    iput-object p1, p0, Lcom/zte/miravision/MiravisionActivity$2;->this$0:Lcom/zte/miravision/MiravisionActivity;

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 383
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 458
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 385
    :pswitch_1
    if-eqz p2, :cond_0

    .line 388
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity$2;->this$0:Lcom/zte/miravision/MiravisionActivity;

    # invokes: Lcom/zte/miravision/MiravisionActivity;->setPicModeStandard()V
    invoke-static {v0}, Lcom/zte/miravision/MiravisionActivity;->access$8(Lcom/zte/miravision/MiravisionActivity;)V

    .line 389
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity$2;->this$0:Lcom/zte/miravision/MiravisionActivity;

    iget-object v2, p0, Lcom/zte/miravision/MiravisionActivity$2;->this$0:Lcom/zte/miravision/MiravisionActivity;

    # getter for: Lcom/zte/miravision/MiravisionActivity;->mStandardBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;
    invoke-static {v2}, Lcom/zte/miravision/MiravisionActivity;->access$0(Lcom/zte/miravision/MiravisionActivity;)Lcom/zte/mifavor/widget/RadioButtonZTE;

    move-result-object v2

    # invokes: Lcom/zte/miravision/MiravisionActivity;->updateRadioButtons(Lcom/zte/mifavor/widget/RadioButtonZTE;)V
    invoke-static {v0, v2}, Lcom/zte/miravision/MiravisionActivity;->access$1(Lcom/zte/miravision/MiravisionActivity;Lcom/zte/mifavor/widget/RadioButtonZTE;)V

    .line 390
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity$2;->this$0:Lcom/zte/miravision/MiravisionActivity;

    # getter for: Lcom/zte/miravision/MiravisionActivity;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/zte/miravision/MiravisionActivity;->access$9(Lcom/zte/miravision/MiravisionActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "systemMode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 391
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity$2;->this$0:Lcom/zte/miravision/MiravisionActivity;

    # getter for: Lcom/zte/miravision/MiravisionActivity;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/zte/miravision/MiravisionActivity;->access$9(Lcom/zte/miravision/MiravisionActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 400
    :pswitch_2
    if-eqz p2, :cond_1

    .line 401
    iget-object v2, p0, Lcom/zte/miravision/MiravisionActivity$2;->this$0:Lcom/zte/miravision/MiravisionActivity;

    # invokes: Lcom/zte/miravision/MiravisionActivity;->setPicModeStandard()V
    invoke-static {v2}, Lcom/zte/miravision/MiravisionActivity;->access$8(Lcom/zte/miravision/MiravisionActivity;)V

    .line 403
    :cond_1
    iget-object v2, p0, Lcom/zte/miravision/MiravisionActivity$2;->this$0:Lcom/zte/miravision/MiravisionActivity;

    invoke-virtual {v2}, Lcom/zte/miravision/MiravisionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 404
    const-string v3, "accessibility_display_daltonizer_enabled"

    .line 405
    if-eqz p2, :cond_2

    .line 403
    :goto_1
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 406
    if-eqz p2, :cond_0

    .line 407
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity$2;->this$0:Lcom/zte/miravision/MiravisionActivity;

    invoke-virtual {v0}, Lcom/zte/miravision/MiravisionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 408
    const-string v2, "accessibility_display_daltonizer"

    .line 407
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 409
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity$2;->this$0:Lcom/zte/miravision/MiravisionActivity;

    iget-object v1, p0, Lcom/zte/miravision/MiravisionActivity$2;->this$0:Lcom/zte/miravision/MiravisionActivity;

    # getter for: Lcom/zte/miravision/MiravisionActivity;->mHeibaiBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;
    invoke-static {v1}, Lcom/zte/miravision/MiravisionActivity;->access$2(Lcom/zte/miravision/MiravisionActivity;)Lcom/zte/mifavor/widget/RadioButtonZTE;

    move-result-object v1

    # invokes: Lcom/zte/miravision/MiravisionActivity;->updateRadioButtons(Lcom/zte/mifavor/widget/RadioButtonZTE;)V
    invoke-static {v0, v1}, Lcom/zte/miravision/MiravisionActivity;->access$1(Lcom/zte/miravision/MiravisionActivity;Lcom/zte/mifavor/widget/RadioButtonZTE;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 405
    goto :goto_1

    .line 413
    :pswitch_3
    if-eqz p2, :cond_3

    .line 414
    iget-object v2, p0, Lcom/zte/miravision/MiravisionActivity$2;->this$0:Lcom/zte/miravision/MiravisionActivity;

    # invokes: Lcom/zte/miravision/MiravisionActivity;->setPicModeStandard()V
    invoke-static {v2}, Lcom/zte/miravision/MiravisionActivity;->access$8(Lcom/zte/miravision/MiravisionActivity;)V

    .line 417
    :cond_3
    iget-object v2, p0, Lcom/zte/miravision/MiravisionActivity$2;->this$0:Lcom/zte/miravision/MiravisionActivity;

    invoke-virtual {v2}, Lcom/zte/miravision/MiravisionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 418
    const-string v3, "accessibility_display_inversion_enabled"

    .line 419
    if-eqz p2, :cond_4

    .line 417
    :goto_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 420
    if-eqz p2, :cond_0

    .line 421
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity$2;->this$0:Lcom/zte/miravision/MiravisionActivity;

    iget-object v1, p0, Lcom/zte/miravision/MiravisionActivity$2;->this$0:Lcom/zte/miravision/MiravisionActivity;

    # getter for: Lcom/zte/miravision/MiravisionActivity;->mFanseBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;
    invoke-static {v1}, Lcom/zte/miravision/MiravisionActivity;->access$3(Lcom/zte/miravision/MiravisionActivity;)Lcom/zte/mifavor/widget/RadioButtonZTE;

    move-result-object v1

    # invokes: Lcom/zte/miravision/MiravisionActivity;->updateRadioButtons(Lcom/zte/mifavor/widget/RadioButtonZTE;)V
    invoke-static {v0, v1}, Lcom/zte/miravision/MiravisionActivity;->access$1(Lcom/zte/miravision/MiravisionActivity;Lcom/zte/mifavor/widget/RadioButtonZTE;)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 419
    goto :goto_2

    .line 425
    :pswitch_4
    if-eqz p2, :cond_0

    .line 429
    invoke-static {v0}, Lcom/mediatek/miravision/setting/MiraVisionJni;->nativeSetPictureMode(I)Z

    .line 430
    const/4 v1, 0x7

    invoke-static {v1}, Lcom/mediatek/miravision/setting/MiraVisionJni;->setGammaIndex(I)V

    .line 431
    iget-object v1, p0, Lcom/zte/miravision/MiravisionActivity$2;->this$0:Lcom/zte/miravision/MiravisionActivity;

    iget-object v2, p0, Lcom/zte/miravision/MiravisionActivity$2;->this$0:Lcom/zte/miravision/MiravisionActivity;

    # getter for: Lcom/zte/miravision/MiravisionActivity;->mXianyanBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;
    invoke-static {v2}, Lcom/zte/miravision/MiravisionActivity;->access$4(Lcom/zte/miravision/MiravisionActivity;)Lcom/zte/mifavor/widget/RadioButtonZTE;

    move-result-object v2

    # invokes: Lcom/zte/miravision/MiravisionActivity;->updateRadioButtons(Lcom/zte/mifavor/widget/RadioButtonZTE;)V
    invoke-static {v1, v2}, Lcom/zte/miravision/MiravisionActivity;->access$1(Lcom/zte/miravision/MiravisionActivity;Lcom/zte/mifavor/widget/RadioButtonZTE;)V

    .line 432
    iget-object v1, p0, Lcom/zte/miravision/MiravisionActivity$2;->this$0:Lcom/zte/miravision/MiravisionActivity;

    # getter for: Lcom/zte/miravision/MiravisionActivity;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/zte/miravision/MiravisionActivity;->access$9(Lcom/zte/miravision/MiravisionActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "systemMode"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 433
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity$2;->this$0:Lcom/zte/miravision/MiravisionActivity;

    # getter for: Lcom/zte/miravision/MiravisionActivity;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/zte/miravision/MiravisionActivity;->access$9(Lcom/zte/miravision/MiravisionActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 437
    :pswitch_5
    if-eqz p2, :cond_5

    .line 441
    invoke-static {v3}, Lcom/mediatek/miravision/setting/MiraVisionJni;->nativeSetPictureMode(I)Z

    .line 442
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity$2;->this$0:Lcom/zte/miravision/MiravisionActivity;

    iget-object v1, p0, Lcom/zte/miravision/MiravisionActivity$2;->this$0:Lcom/zte/miravision/MiravisionActivity;

    # getter for: Lcom/zte/miravision/MiravisionActivity;->mZidingyiBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;
    invoke-static {v1}, Lcom/zte/miravision/MiravisionActivity;->access$5(Lcom/zte/miravision/MiravisionActivity;)Lcom/zte/mifavor/widget/RadioButtonZTE;

    move-result-object v1

    # invokes: Lcom/zte/miravision/MiravisionActivity;->updateRadioButtons(Lcom/zte/mifavor/widget/RadioButtonZTE;)V
    invoke-static {v0, v1}, Lcom/zte/miravision/MiravisionActivity;->access$1(Lcom/zte/miravision/MiravisionActivity;Lcom/zte/mifavor/widget/RadioButtonZTE;)V

    .line 443
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity$2;->this$0:Lcom/zte/miravision/MiravisionActivity;

    # getter for: Lcom/zte/miravision/MiravisionActivity;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/zte/miravision/MiravisionActivity;->access$9(Lcom/zte/miravision/MiravisionActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "systemMode"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 444
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity$2;->this$0:Lcom/zte/miravision/MiravisionActivity;

    # getter for: Lcom/zte/miravision/MiravisionActivity;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/zte/miravision/MiravisionActivity;->access$9(Lcom/zte/miravision/MiravisionActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 445
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity$2;->this$0:Lcom/zte/miravision/MiravisionActivity;

    # getter for: Lcom/zte/miravision/MiravisionActivity;->savedGamma:I
    invoke-static {v0}, Lcom/zte/miravision/MiravisionActivity;->access$10(Lcom/zte/miravision/MiravisionActivity;)I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/miravision/setting/MiraVisionJni;->setGammaIndex(I)V

    .line 446
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity$2;->this$0:Lcom/zte/miravision/MiravisionActivity;

    # getter for: Lcom/zte/miravision/MiravisionActivity;->savedContrast:I
    invoke-static {v0}, Lcom/zte/miravision/MiravisionActivity;->access$11(Lcom/zte/miravision/MiravisionActivity;)I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/miravision/setting/MiraVisionJni;->setContrastIndex(I)V

    .line 447
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity$2;->this$0:Lcom/zte/miravision/MiravisionActivity;

    # getter for: Lcom/zte/miravision/MiravisionActivity;->savedSaturation:I
    invoke-static {v0}, Lcom/zte/miravision/MiravisionActivity;->access$12(Lcom/zte/miravision/MiravisionActivity;)I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/miravision/setting/MiraVisionJni;->setSaturationIndex(I)V

    .line 448
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity$2;->this$0:Lcom/zte/miravision/MiravisionActivity;

    # getter for: Lcom/zte/miravision/MiravisionActivity;->savedSharp:I
    invoke-static {v0}, Lcom/zte/miravision/MiravisionActivity;->access$13(Lcom/zte/miravision/MiravisionActivity;)I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/miravision/setting/MiraVisionJni;->setSharpnessIndex(I)V

    .line 449
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity$2;->this$0:Lcom/zte/miravision/MiravisionActivity;

    # invokes: Lcom/zte/miravision/MiravisionActivity;->setImageBitmap()V
    invoke-static {v0}, Lcom/zte/miravision/MiravisionActivity;->access$14(Lcom/zte/miravision/MiravisionActivity;)V

    goto/16 :goto_0

    .line 451
    :cond_5
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity$2;->this$0:Lcom/zte/miravision/MiravisionActivity;

    # invokes: Lcom/zte/miravision/MiravisionActivity;->setImageBitmap()V
    invoke-static {v0}, Lcom/zte/miravision/MiravisionActivity;->access$14(Lcom/zte/miravision/MiravisionActivity;)V

    goto/16 :goto_0

    .line 383
    nop

    :pswitch_data_0
    .packed-switch 0x7f060062
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
