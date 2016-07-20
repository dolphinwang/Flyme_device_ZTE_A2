.class Lcom/zte/zgesture/setting/DrawIntroActivity$2;
.super Ljava/lang/Object;
.source "DrawIntroActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zgesture/setting/DrawIntroActivity;->initSwitch(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/setting/DrawIntroActivity;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/setting/DrawIntroActivity;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/zte/zgesture/setting/DrawIntroActivity$2;->this$0:Lcom/zte/zgesture/setting/DrawIntroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 190
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity$2;->this$0:Lcom/zte/zgesture/setting/DrawIntroActivity;

    # getter for: Lcom/zte/zgesture/setting/DrawIntroActivity;->mType:I
    invoke-static {v0}, Lcom/zte/zgesture/setting/DrawIntroActivity;->access$000(Lcom/zte/zgesture/setting/DrawIntroActivity;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 238
    :goto_0
    return-void

    .line 192
    :pswitch_0
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity$2;->this$0:Lcom/zte/zgesture/setting/DrawIntroActivity;

    # getter for: Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/DrawIntroActivity;->access$100(Lcom/zte/zgesture/setting/DrawIntroActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    const-string v1, "setting_draw_c"

    invoke-virtual {v0, v1, p2}, Lcom/zte/zgesture/setting/GestureSetting;->setValue(Ljava/lang/String;Z)V

    .line 193
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity$2;->this$0:Lcom/zte/zgesture/setting/DrawIntroActivity;

    # getter for: Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/DrawIntroActivity;->access$100(Lcom/zte/zgesture/setting/DrawIntroActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->writeBack()V

    goto :goto_0

    .line 196
    :pswitch_1
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity$2;->this$0:Lcom/zte/zgesture/setting/DrawIntroActivity;

    # getter for: Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/DrawIntroActivity;->access$100(Lcom/zte/zgesture/setting/DrawIntroActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    const-string v1, "setting_draw_m"

    invoke-virtual {v0, v1, p2}, Lcom/zte/zgesture/setting/GestureSetting;->setValue(Ljava/lang/String;Z)V

    .line 197
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity$2;->this$0:Lcom/zte/zgesture/setting/DrawIntroActivity;

    # getter for: Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/DrawIntroActivity;->access$100(Lcom/zte/zgesture/setting/DrawIntroActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->writeBack()V

    goto :goto_0

    .line 200
    :pswitch_2
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity$2;->this$0:Lcom/zte/zgesture/setting/DrawIntroActivity;

    # getter for: Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/DrawIntroActivity;->access$100(Lcom/zte/zgesture/setting/DrawIntroActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    const-string v1, "setting_draw_w"

    invoke-virtual {v0, v1, p2}, Lcom/zte/zgesture/setting/GestureSetting;->setValue(Ljava/lang/String;Z)V

    .line 201
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity$2;->this$0:Lcom/zte/zgesture/setting/DrawIntroActivity;

    # getter for: Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/DrawIntroActivity;->access$100(Lcom/zte/zgesture/setting/DrawIntroActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->writeBack()V

    goto :goto_0

    .line 204
    :pswitch_3
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity$2;->this$0:Lcom/zte/zgesture/setting/DrawIntroActivity;

    # getter for: Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/DrawIntroActivity;->access$100(Lcom/zte/zgesture/setting/DrawIntroActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    const-string v1, "setting_draw_s"

    invoke-virtual {v0, v1, p2}, Lcom/zte/zgesture/setting/GestureSetting;->setValue(Ljava/lang/String;Z)V

    .line 205
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity$2;->this$0:Lcom/zte/zgesture/setting/DrawIntroActivity;

    # getter for: Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/DrawIntroActivity;->access$100(Lcom/zte/zgesture/setting/DrawIntroActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->writeBack()V

    goto :goto_0

    .line 208
    :pswitch_4
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity$2;->this$0:Lcom/zte/zgesture/setting/DrawIntroActivity;

    # getter for: Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/DrawIntroActivity;->access$100(Lcom/zte/zgesture/setting/DrawIntroActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    const-string v1, "setting_draw_v"

    invoke-virtual {v0, v1, p2}, Lcom/zte/zgesture/setting/GestureSetting;->setValue(Ljava/lang/String;Z)V

    .line 209
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity$2;->this$0:Lcom/zte/zgesture/setting/DrawIntroActivity;

    # getter for: Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/DrawIntroActivity;->access$100(Lcom/zte/zgesture/setting/DrawIntroActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->writeBack()V

    goto :goto_0

    .line 212
    :pswitch_5
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity$2;->this$0:Lcom/zte/zgesture/setting/DrawIntroActivity;

    # getter for: Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/DrawIntroActivity;->access$100(Lcom/zte/zgesture/setting/DrawIntroActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    const-string v1, "setting_draw_e"

    invoke-virtual {v0, v1, p2}, Lcom/zte/zgesture/setting/GestureSetting;->setValue(Ljava/lang/String;Z)V

    .line 213
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity$2;->this$0:Lcom/zte/zgesture/setting/DrawIntroActivity;

    # getter for: Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/DrawIntroActivity;->access$100(Lcom/zte/zgesture/setting/DrawIntroActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->writeBack()V

    goto :goto_0

    .line 216
    :pswitch_6
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity$2;->this$0:Lcom/zte/zgesture/setting/DrawIntroActivity;

    # getter for: Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/DrawIntroActivity;->access$100(Lcom/zte/zgesture/setting/DrawIntroActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    const-string v1, "setting_draw_o"

    invoke-virtual {v0, v1, p2}, Lcom/zte/zgesture/setting/GestureSetting;->setValue(Ljava/lang/String;Z)V

    .line 217
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity$2;->this$0:Lcom/zte/zgesture/setting/DrawIntroActivity;

    # getter for: Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/DrawIntroActivity;->access$100(Lcom/zte/zgesture/setting/DrawIntroActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->writeBack()V

    goto/16 :goto_0

    .line 220
    :pswitch_7
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity$2;->this$0:Lcom/zte/zgesture/setting/DrawIntroActivity;

    # getter for: Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/DrawIntroActivity;->access$100(Lcom/zte/zgesture/setting/DrawIntroActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    const-string v1, "setting_draw_up"

    invoke-virtual {v0, v1, p2}, Lcom/zte/zgesture/setting/GestureSetting;->setValue(Ljava/lang/String;Z)V

    .line 221
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity$2;->this$0:Lcom/zte/zgesture/setting/DrawIntroActivity;

    # getter for: Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/DrawIntroActivity;->access$100(Lcom/zte/zgesture/setting/DrawIntroActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->writeBack()V

    goto/16 :goto_0

    .line 224
    :pswitch_8
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity$2;->this$0:Lcom/zte/zgesture/setting/DrawIntroActivity;

    # getter for: Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/DrawIntroActivity;->access$100(Lcom/zte/zgesture/setting/DrawIntroActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    const-string v1, "setting_draw_down"

    invoke-virtual {v0, v1, p2}, Lcom/zte/zgesture/setting/GestureSetting;->setValue(Ljava/lang/String;Z)V

    .line 225
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity$2;->this$0:Lcom/zte/zgesture/setting/DrawIntroActivity;

    # getter for: Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/DrawIntroActivity;->access$100(Lcom/zte/zgesture/setting/DrawIntroActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->writeBack()V

    goto/16 :goto_0

    .line 228
    :pswitch_9
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity$2;->this$0:Lcom/zte/zgesture/setting/DrawIntroActivity;

    # getter for: Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/DrawIntroActivity;->access$100(Lcom/zte/zgesture/setting/DrawIntroActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    const-string v1, "setting_draw_left"

    invoke-virtual {v0, v1, p2}, Lcom/zte/zgesture/setting/GestureSetting;->setValue(Ljava/lang/String;Z)V

    .line 229
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity$2;->this$0:Lcom/zte/zgesture/setting/DrawIntroActivity;

    # getter for: Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/DrawIntroActivity;->access$100(Lcom/zte/zgesture/setting/DrawIntroActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->writeBack()V

    goto/16 :goto_0

    .line 232
    :pswitch_a
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity$2;->this$0:Lcom/zte/zgesture/setting/DrawIntroActivity;

    # getter for: Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/DrawIntroActivity;->access$100(Lcom/zte/zgesture/setting/DrawIntroActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    const-string v1, "setting_draw_right"

    invoke-virtual {v0, v1, p2}, Lcom/zte/zgesture/setting/GestureSetting;->setValue(Ljava/lang/String;Z)V

    .line 233
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity$2;->this$0:Lcom/zte/zgesture/setting/DrawIntroActivity;

    # getter for: Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;
    invoke-static {v0}, Lcom/zte/zgesture/setting/DrawIntroActivity;->access$100(Lcom/zte/zgesture/setting/DrawIntroActivity;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->writeBack()V

    goto/16 :goto_0

    .line 190
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
