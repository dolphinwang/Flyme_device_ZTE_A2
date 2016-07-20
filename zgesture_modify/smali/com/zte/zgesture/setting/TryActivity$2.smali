.class Lcom/zte/zgesture/setting/TryActivity$2;
.super Ljava/lang/Object;
.source "TryActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zgesture/setting/TryActivity;->switchCheck(Landroid/widget/Switch;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/setting/TryActivity;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/setting/TryActivity;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/zte/zgesture/setting/TryActivity$2;->this$0:Lcom/zte/zgesture/setting/TryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 333
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity$2;->this$0:Lcom/zte/zgesture/setting/TryActivity;

    # getter for: Lcom/zte/zgesture/setting/TryActivity;->activityType:I
    invoke-static {v0}, Lcom/zte/zgesture/setting/TryActivity;->access$000(Lcom/zte/zgesture/setting/TryActivity;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 401
    :goto_0
    :pswitch_0
    return-void

    .line 335
    :pswitch_1
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity$2;->this$0:Lcom/zte/zgesture/setting/TryActivity;

    # getter for: Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/TryActivity;->access$100(Lcom/zte/zgesture/setting/TryActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    const-string v1, "setting_switch_app"

    invoke-virtual {v0, v1, p2}, Lcom/zte/zgesture/setting/GestureSetting;->setValue(Ljava/lang/String;Z)V

    .line 336
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity$2;->this$0:Lcom/zte/zgesture/setting/TryActivity;

    # getter for: Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/TryActivity;->access$100(Lcom/zte/zgesture/setting/TryActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->writeBack()V

    goto :goto_0

    .line 339
    :pswitch_2
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity$2;->this$0:Lcom/zte/zgesture/setting/TryActivity;

    # getter for: Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/TryActivity;->access$100(Lcom/zte/zgesture/setting/TryActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    const-string v1, "setting_close_app"

    invoke-virtual {v0, v1, p2}, Lcom/zte/zgesture/setting/GestureSetting;->setValue(Ljava/lang/String;Z)V

    .line 340
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity$2;->this$0:Lcom/zte/zgesture/setting/TryActivity;

    # getter for: Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/TryActivity;->access$100(Lcom/zte/zgesture/setting/TryActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->writeBack()V

    goto :goto_0

    .line 343
    :pswitch_3
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity$2;->this$0:Lcom/zte/zgesture/setting/TryActivity;

    # getter for: Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/TryActivity;->access$100(Lcom/zte/zgesture/setting/TryActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    const-string v1, "setting_screen_shot"

    invoke-virtual {v0, v1, p2}, Lcom/zte/zgesture/setting/GestureSetting;->setValue(Ljava/lang/String;Z)V

    .line 344
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity$2;->this$0:Lcom/zte/zgesture/setting/TryActivity;

    # getter for: Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/TryActivity;->access$100(Lcom/zte/zgesture/setting/TryActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->writeBack()V

    goto :goto_0

    .line 347
    :pswitch_4
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity$2;->this$0:Lcom/zte/zgesture/setting/TryActivity;

    # getter for: Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/TryActivity;->access$100(Lcom/zte/zgesture/setting/TryActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    const-string v1, "setting_call"

    invoke-virtual {v0, v1, p2}, Lcom/zte/zgesture/setting/GestureSetting;->setValue(Ljava/lang/String;Z)V

    .line 348
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity$2;->this$0:Lcom/zte/zgesture/setting/TryActivity;

    # getter for: Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/TryActivity;->access$100(Lcom/zte/zgesture/setting/TryActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->writeBack()V

    goto :goto_0

    .line 351
    :pswitch_5
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity$2;->this$0:Lcom/zte/zgesture/setting/TryActivity;

    # getter for: Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/TryActivity;->access$100(Lcom/zte/zgesture/setting/TryActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    const-string v1, "setting_call_turn"

    invoke-virtual {v0, v1, p2}, Lcom/zte/zgesture/setting/GestureSetting;->setValue(Ljava/lang/String;Z)V

    .line 352
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity$2;->this$0:Lcom/zte/zgesture/setting/TryActivity;

    # getter for: Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/TryActivity;->access$100(Lcom/zte/zgesture/setting/TryActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->writeBack()V

    goto :goto_0

    .line 355
    :pswitch_6
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity$2;->this$0:Lcom/zte/zgesture/setting/TryActivity;

    # getter for: Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/TryActivity;->access$100(Lcom/zte/zgesture/setting/TryActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    const-string v1, "setting_pocket"

    invoke-virtual {v0, v1, p2}, Lcom/zte/zgesture/setting/GestureSetting;->setValue(Ljava/lang/String;Z)V

    .line 356
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity$2;->this$0:Lcom/zte/zgesture/setting/TryActivity;

    # getter for: Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/TryActivity;->access$100(Lcom/zte/zgesture/setting/TryActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->writeBack()V

    goto :goto_0

    .line 359
    :pswitch_7
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity$2;->this$0:Lcom/zte/zgesture/setting/TryActivity;

    # getter for: Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/TryActivity;->access$100(Lcom/zte/zgesture/setting/TryActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    const-string v1, "setting_answer"

    invoke-virtual {v0, v1, p2}, Lcom/zte/zgesture/setting/GestureSetting;->setValue(Ljava/lang/String;Z)V

    .line 360
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity$2;->this$0:Lcom/zte/zgesture/setting/TryActivity;

    # getter for: Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/TryActivity;->access$100(Lcom/zte/zgesture/setting/TryActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->writeBack()V

    goto/16 :goto_0

    .line 363
    :pswitch_8
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity$2;->this$0:Lcom/zte/zgesture/setting/TryActivity;

    # getter for: Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/TryActivity;->access$100(Lcom/zte/zgesture/setting/TryActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    const-string v1, "setting_change_to_receiver"

    invoke-virtual {v0, v1, p2}, Lcom/zte/zgesture/setting/GestureSetting;->setValue(Ljava/lang/String;Z)V

    .line 364
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity$2;->this$0:Lcom/zte/zgesture/setting/TryActivity;

    # getter for: Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/TryActivity;->access$100(Lcom/zte/zgesture/setting/TryActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->writeBack()V

    goto/16 :goto_0

    .line 367
    :pswitch_9
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity$2;->this$0:Lcom/zte/zgesture/setting/TryActivity;

    # getter for: Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/TryActivity;->access$100(Lcom/zte/zgesture/setting/TryActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    const-string v1, "setting_close_screen"

    invoke-virtual {v0, v1, p2}, Lcom/zte/zgesture/setting/GestureSetting;->setValue(Ljava/lang/String;Z)V

    .line 368
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity$2;->this$0:Lcom/zte/zgesture/setting/TryActivity;

    # getter for: Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/TryActivity;->access$100(Lcom/zte/zgesture/setting/TryActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->writeBack()V

    goto/16 :goto_0

    .line 371
    :pswitch_a
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity$2;->this$0:Lcom/zte/zgesture/setting/TryActivity;

    # getter for: Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/TryActivity;->access$100(Lcom/zte/zgesture/setting/TryActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    const-string v1, "setting_double_tap"

    invoke-virtual {v0, v1, p2}, Lcom/zte/zgesture/setting/GestureSetting;->setValue(Ljava/lang/String;Z)V

    .line 372
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity$2;->this$0:Lcom/zte/zgesture/setting/TryActivity;

    # getter for: Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/TryActivity;->access$100(Lcom/zte/zgesture/setting/TryActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->writeBack()V

    goto/16 :goto_0

    .line 375
    :pswitch_b
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity$2;->this$0:Lcom/zte/zgesture/setting/TryActivity;

    # getter for: Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/TryActivity;->access$100(Lcom/zte/zgesture/setting/TryActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    const-string v1, "setting_shake"

    invoke-virtual {v0, v1, p2}, Lcom/zte/zgesture/setting/GestureSetting;->setValue(Ljava/lang/String;Z)V

    .line 376
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity$2;->this$0:Lcom/zte/zgesture/setting/TryActivity;

    # getter for: Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/TryActivity;->access$100(Lcom/zte/zgesture/setting/TryActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->writeBack()V

    goto/16 :goto_0

    .line 379
    :pswitch_c
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity$2;->this$0:Lcom/zte/zgesture/setting/TryActivity;

    # getter for: Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/TryActivity;->access$100(Lcom/zte/zgesture/setting/TryActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    const-string v1, "setting_air_m"

    invoke-virtual {v0, v1, p2}, Lcom/zte/zgesture/setting/GestureSetting;->setValue(Ljava/lang/String;Z)V

    .line 380
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity$2;->this$0:Lcom/zte/zgesture/setting/TryActivity;

    # getter for: Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/TryActivity;->access$100(Lcom/zte/zgesture/setting/TryActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->writeBack()V

    goto/16 :goto_0

    .line 383
    :pswitch_d
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity$2;->this$0:Lcom/zte/zgesture/setting/TryActivity;

    # getter for: Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/TryActivity;->access$100(Lcom/zte/zgesture/setting/TryActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    const-string v1, "setting_air_o"

    invoke-virtual {v0, v1, p2}, Lcom/zte/zgesture/setting/GestureSetting;->setValue(Ljava/lang/String;Z)V

    .line 384
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity$2;->this$0:Lcom/zte/zgesture/setting/TryActivity;

    # getter for: Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/TryActivity;->access$100(Lcom/zte/zgesture/setting/TryActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->writeBack()V

    goto/16 :goto_0

    .line 387
    :pswitch_e
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity$2;->this$0:Lcom/zte/zgesture/setting/TryActivity;

    # getter for: Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/TryActivity;->access$100(Lcom/zte/zgesture/setting/TryActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    const-string v1, "setting_air_v"

    invoke-virtual {v0, v1, p2}, Lcom/zte/zgesture/setting/GestureSetting;->setValue(Ljava/lang/String;Z)V

    .line 388
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity$2;->this$0:Lcom/zte/zgesture/setting/TryActivity;

    # getter for: Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/TryActivity;->access$100(Lcom/zte/zgesture/setting/TryActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->writeBack()V

    goto/16 :goto_0

    .line 391
    :pswitch_f
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity$2;->this$0:Lcom/zte/zgesture/setting/TryActivity;

    # getter for: Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/TryActivity;->access$100(Lcom/zte/zgesture/setting/TryActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    const-string v1, "setting_air_z"

    invoke-virtual {v0, v1, p2}, Lcom/zte/zgesture/setting/GestureSetting;->setValue(Ljava/lang/String;Z)V

    .line 392
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity$2;->this$0:Lcom/zte/zgesture/setting/TryActivity;

    # getter for: Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/TryActivity;->access$100(Lcom/zte/zgesture/setting/TryActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->writeBack()V

    goto/16 :goto_0

    .line 395
    :pswitch_10
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity$2;->this$0:Lcom/zte/zgesture/setting/TryActivity;

    # getter for: Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/TryActivity;->access$100(Lcom/zte/zgesture/setting/TryActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    const-string v1, "setting_air_w"

    invoke-virtual {v0, v1, p2}, Lcom/zte/zgesture/setting/GestureSetting;->setValue(Ljava/lang/String;Z)V

    .line 396
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity$2;->this$0:Lcom/zte/zgesture/setting/TryActivity;

    # getter for: Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/TryActivity;->access$100(Lcom/zte/zgesture/setting/TryActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->writeBack()V

    goto/16 :goto_0

    .line 333
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method
