.class public Lcom/zte/zgesture/setting/DrawIntroActivity;
.super Lcom/zte/mifavor/widget/ActivityZTE;
.source "DrawIntroActivity.java"


# static fields
.field public static final TYPE_DRAW_C:I = 0x1

.field public static final TYPE_DRAW_DOWN:I = 0x9

.field public static final TYPE_DRAW_E:I = 0x6

.field public static final TYPE_DRAW_LEFT:I = 0xa

.field public static final TYPE_DRAW_M:I = 0x2

.field public static final TYPE_DRAW_O:I = 0x7

.field public static final TYPE_DRAW_RIGHT:I = 0xb

.field public static final TYPE_DRAW_S:I = 0x4

.field public static final TYPE_DRAW_UP:I = 0x8

.field public static final TYPE_DRAW_V:I = 0x5

.field public static final TYPE_DRAW_W:I = 0x3

.field public static final TYPE_NONE:I


# instance fields
.field private actionBarView:Lcom/zte/zgesture/ui/ActionBarView;

.field private mActionbarSwitch:Landroid/widget/Switch;

.field private mChooseAppBtn:Landroid/widget/Button;

.field private mDrawView:Lcom/zte/zgesture/ui/AutoDrawView;

.field private mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ActivityZTE;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/zte/zgesture/setting/DrawIntroActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/setting/DrawIntroActivity;

    .prologue
    .line 27
    iget v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mType:I

    return v0
.end method

.method static synthetic access$100(Lcom/zte/zgesture/setting/DrawIntroActivity;)Lcom/zte/zgesture/setting/GestureSetting;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/setting/DrawIntroActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    return-object v0
.end method

.method private changeSetting(Ljava/lang/String;)V
    .locals 2
    .param p1, "intentUri"    # Ljava/lang/String;

    .prologue
    .line 306
    iget v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 334
    :goto_0
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->writeBack()V

    .line 335
    return-void

    .line 308
    :pswitch_0
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v1, "setting_draw_c_app"

    invoke-virtual {v0, v1, p1}, Lcom/zte/zgesture/setting/GestureSetting;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 311
    :pswitch_1
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v1, "setting_draw_m_app"

    invoke-virtual {v0, v1, p1}, Lcom/zte/zgesture/setting/GestureSetting;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 314
    :pswitch_2
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v1, "setting_draw_w_app"

    invoke-virtual {v0, v1, p1}, Lcom/zte/zgesture/setting/GestureSetting;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 317
    :pswitch_3
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v1, "setting_draw_s_app"

    invoke-virtual {v0, v1, p1}, Lcom/zte/zgesture/setting/GestureSetting;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 320
    :pswitch_4
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v1, "setting_draw_v_app"

    invoke-virtual {v0, v1, p1}, Lcom/zte/zgesture/setting/GestureSetting;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 323
    :pswitch_5
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v1, "setting_draw_e_app"

    invoke-virtual {v0, v1, p1}, Lcom/zte/zgesture/setting/GestureSetting;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :pswitch_6
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v1, "setting_draw_o_app"

    invoke-virtual {v0, v1, p1}, Lcom/zte/zgesture/setting/GestureSetting;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 329
    :pswitch_7
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v1, "setting_draw_up_app"

    invoke-virtual {v0, v1, p1}, Lcom/zte/zgesture/setting/GestureSetting;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 306
    nop

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
    .end packed-switch
.end method

.method private getAppIntentUri(I)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 243
    packed-switch p1, :pswitch_data_0

    .line 261
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 245
    :pswitch_0
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v1, "setting_draw_c_app"

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 247
    :pswitch_1
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v1, "setting_draw_m_app"

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 249
    :pswitch_2
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v1, "setting_draw_w_app"

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 251
    :pswitch_3
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v1, "setting_draw_s_app"

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 253
    :pswitch_4
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v1, "setting_draw_v_app"

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 255
    :pswitch_5
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v1, "setting_draw_e_app"

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 257
    :pswitch_6
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v1, "setting_draw_o_app"

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 259
    :pswitch_7
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v1, "setting_draw_up_app"

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 243
    nop

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
    .end packed-switch
.end method

.method private initDrawView()V
    .locals 2

    .prologue
    .line 112
    const v0, 0x7f06006b

    invoke-virtual {p0, v0}, Lcom/zte/zgesture/setting/DrawIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/zgesture/ui/AutoDrawView;

    iput-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mDrawView:Lcom/zte/zgesture/ui/AutoDrawView;

    .line 113
    iget v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 141
    :goto_0
    return-void

    .line 115
    :pswitch_0
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mDrawView:Lcom/zte/zgesture/ui/AutoDrawView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/ui/AutoDrawView;->loadShape(I)V

    goto :goto_0

    .line 118
    :pswitch_1
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mDrawView:Lcom/zte/zgesture/ui/AutoDrawView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/ui/AutoDrawView;->loadShape(I)V

    goto :goto_0

    .line 121
    :pswitch_2
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mDrawView:Lcom/zte/zgesture/ui/AutoDrawView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/ui/AutoDrawView;->loadShape(I)V

    goto :goto_0

    .line 124
    :pswitch_3
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mDrawView:Lcom/zte/zgesture/ui/AutoDrawView;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/ui/AutoDrawView;->loadShape(I)V

    goto :goto_0

    .line 127
    :pswitch_4
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mDrawView:Lcom/zte/zgesture/ui/AutoDrawView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/ui/AutoDrawView;->loadShape(I)V

    goto :goto_0

    .line 130
    :pswitch_5
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mDrawView:Lcom/zte/zgesture/ui/AutoDrawView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/ui/AutoDrawView;->loadShape(I)V

    goto :goto_0

    .line 133
    :pswitch_6
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mDrawView:Lcom/zte/zgesture/ui/AutoDrawView;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/ui/AutoDrawView;->loadShape(I)V

    goto :goto_0

    .line 136
    :pswitch_7
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mDrawView:Lcom/zte/zgesture/ui/AutoDrawView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/ui/AutoDrawView;->loadShape(I)V

    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method private initSwitch(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 149
    packed-switch p1, :pswitch_data_0

    .line 187
    :goto_0
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mActionbarSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/zte/zgesture/setting/DrawIntroActivity$2;

    invoke-direct {v1, p0}, Lcom/zte/zgesture/setting/DrawIntroActivity$2;-><init>(Lcom/zte/zgesture/setting/DrawIntroActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 240
    return-void

    .line 151
    :pswitch_0
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mActionbarSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v2, "setting_draw_c"

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 154
    :pswitch_1
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mActionbarSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v2, "setting_draw_m"

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 157
    :pswitch_2
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mActionbarSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v2, "setting_draw_w"

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 160
    :pswitch_3
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mActionbarSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v2, "setting_draw_s"

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 163
    :pswitch_4
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mActionbarSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v2, "setting_draw_v"

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 166
    :pswitch_5
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mActionbarSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v2, "setting_draw_e"

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 169
    :pswitch_6
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mActionbarSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v2, "setting_draw_o"

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 172
    :pswitch_7
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mActionbarSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v2, "setting_draw_up"

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 175
    :pswitch_8
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mActionbarSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v2, "setting_draw_down"

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_0

    .line 178
    :pswitch_9
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mActionbarSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v2, "setting_draw_left"

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_0

    .line 181
    :pswitch_a
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mActionbarSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v2, "setting_draw_right"

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_0

    .line 149
    nop

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

.method private parseAppTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "intentUri"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 266
    if-nez p1, :cond_0

    .line 278
    :goto_0
    return-object v2

    .line 270
    :cond_0
    const/4 v0, 0x0

    .line 272
    .local v0, "appIntent":Landroid/content/Intent;
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p1, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 277
    iget-object v3, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    invoke-virtual {v3, v0}, Lcom/zte/zgesture/setting/GestureSetting;->getAppTitleByName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, "title":Ljava/lang/String;
    goto :goto_0

    .line 273
    .end local v2    # "title":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 274
    .local v1, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method private resetTitle()V
    .locals 4

    .prologue
    .line 294
    iget v2, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mType:I

    invoke-direct {p0, v2}, Lcom/zte/zgesture/setting/DrawIntroActivity;->getAppIntentUri(I)Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "intentUri":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/zte/zgesture/setting/DrawIntroActivity;->parseAppTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, "str":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 298
    iget-object v2, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->actionBarView:Lcom/zte/zgesture/ui/ActionBarView;

    invoke-virtual {v2}, Lcom/zte/zgesture/ui/ActionBarView;->getActionBarTitileView()Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f090072

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 299
    iget-object v2, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mChooseAppBtn:Landroid/widget/Button;

    const v3, 0x7f0900a9

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 303
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v2, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->actionBarView:Lcom/zte/zgesture/ui/ActionBarView;

    invoke-virtual {v2}, Lcom/zte/zgesture/ui/ActionBarView;->getActionBarTitileView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 284
    invoke-super {p0, p1, p2, p3}, Lcom/zte/mifavor/widget/ActivityZTE;->onActivityResult(IILandroid/content/Intent;)V

    .line 286
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 287
    const-string v1, "app_intent"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "appIntent":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/zte/zgesture/setting/DrawIntroActivity;->changeSetting(Ljava/lang/String;)V

    .line 289
    invoke-direct {p0}, Lcom/zte/zgesture/setting/DrawIntroActivity;->resetTitle()V

    .line 291
    .end local v0    # "appIntent":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/ActivityZTE;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v1, 0x7f030056

    invoke-virtual {p0, v1}, Lcom/zte/zgesture/setting/DrawIntroActivity;->setContentView(I)V

    .line 52
    sget-boolean v1, Lcom/zte/zgesture/tools/FeatureConfig;->mifavorWidget:Z

    if-eqz v1, :cond_0

    .line 53
    invoke-static {p0}, Lcom/zte/zgesture/tools/Utils;->getIndicatorColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/zte/zgesture/setting/DrawIntroActivity;->setIndicatorColor(I)V

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/DrawIntroActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mType:I

    .line 57
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/DrawIntroActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/zgesture/setting/GestureSetting;->getGestureSetting(Landroid/content/Context;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    .line 58
    iget-object v1, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    invoke-virtual {v1}, Lcom/zte/zgesture/setting/GestureSetting;->reloadSetting()V

    .line 59
    const v1, 0x7f060068

    invoke-virtual {p0, v1}, Lcom/zte/zgesture/setting/DrawIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mChooseAppBtn:Landroid/widget/Button;

    .line 60
    iget-object v1, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mChooseAppBtn:Landroid/widget/Button;

    new-instance v2, Lcom/zte/zgesture/setting/DrawIntroActivity$1;

    invoke-direct {v2, p0}, Lcom/zte/zgesture/setting/DrawIntroActivity$1;-><init>(Lcom/zte/zgesture/setting/DrawIntroActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    new-instance v1, Lcom/zte/zgesture/ui/ActionBarView;

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/DrawIntroActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/DrawIntroActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/zte/zgesture/ui/ActionBarView;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    iput-object v1, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->actionBarView:Lcom/zte/zgesture/ui/ActionBarView;

    .line 69
    iget-object v1, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->actionBarView:Lcom/zte/zgesture/ui/ActionBarView;

    invoke-virtual {v1}, Lcom/zte/zgesture/ui/ActionBarView;->initActionBar()V

    .line 70
    iget-object v1, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->actionBarView:Lcom/zte/zgesture/ui/ActionBarView;

    invoke-virtual {v1}, Lcom/zte/zgesture/ui/ActionBarView;->getActionBarSwitch()Landroid/widget/Switch;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mActionbarSwitch:Landroid/widget/Switch;

    .line 71
    iget-object v1, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v2, "setting_all"

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v2, "setting_black_screen_gesture"

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 73
    .local v0, "isEnabled":Z
    :cond_1
    iget-object v1, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mActionbarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 74
    invoke-direct {p0}, Lcom/zte/zgesture/setting/DrawIntroActivity;->initDrawView()V

    .line 75
    invoke-direct {p0}, Lcom/zte/zgesture/setting/DrawIntroActivity;->resetTitle()V

    .line 76
    iget v1, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mType:I

    invoke-direct {p0, v1}, Lcom/zte/zgesture/setting/DrawIntroActivity;->initSwitch(I)V

    .line 79
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 94
    invoke-super {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->onDestroy()V

    .line 95
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 83
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 88
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/ActivityZTE;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 85
    :pswitch_0
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/DrawIntroActivity;->finish()V

    .line 86
    const/4 v0, 0x1

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->onPause()V

    .line 101
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mDrawView:Lcom/zte/zgesture/ui/AutoDrawView;

    invoke-virtual {v0}, Lcom/zte/zgesture/ui/AutoDrawView;->stopAnimation()V

    .line 102
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->onResume()V

    .line 108
    iget-object v0, p0, Lcom/zte/zgesture/setting/DrawIntroActivity;->mDrawView:Lcom/zte/zgesture/ui/AutoDrawView;

    invoke-virtual {v0}, Lcom/zte/zgesture/ui/AutoDrawView;->startAnimation()V

    .line 109
    return-void
.end method
