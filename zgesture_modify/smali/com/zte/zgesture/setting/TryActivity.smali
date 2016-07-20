.class public Lcom/zte/zgesture/setting/TryActivity;
.super Lcom/zte/mifavor/widget/ActivityZTE;
.source "TryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TYPE_AIR_M:I = 0xe

.field public static final TYPE_AIR_O:I = 0xf

.field public static final TYPE_AIR_V:I = 0x10

.field public static final TYPE_AIR_W:I = 0x12

.field public static final TYPE_AIR_Z:I = 0x11

.field public static final TYPE_ALARM_FLIP:I = 0xa

.field public static final TYPE_ALARM_PAT:I = 0x9

.field public static final TYPE_ANSWER:I = 0x7

.field public static final TYPE_CHANGE_TO_RECEIVER:I = 0xb

.field public static final TYPE_CLOSE_APP:I = 0x3

.field public static final TYPE_CLOSE_SCREEN:I = 0xc

.field public static final TYPE_DIAL:I = 0x5

.field public static final TYPE_DOUBLE_TAP:I = 0x1

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_POCKET:I = 0x6

.field public static final TYPE_SCREENSHOT:I = 0x4

.field public static final TYPE_SHAKE:I = 0xd

.field public static final TYPE_SWITCH_APP:I = 0x2

.field public static final TYPE_TURN:I = 0x8


# instance fields
.field private actionBar:Landroid/app/ActionBar;

.field private actionBarView:Lcom/zte/zgesture/ui/ActionBarView;

.field private activityType:I

.field private animIntro:Landroid/graphics/drawable/AnimationDrawable;

.field private imgIntro:Landroid/widget/ImageView;

.field private introText:Landroid/widget/TextView;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mChooseAppBtn:Landroid/widget/Button;

.field private mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

.field private mTryBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ActivityZTE;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/zgesture/setting/TryActivity;->activityType:I

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zgesture/setting/TryActivity;->animIntro:Landroid/graphics/drawable/AnimationDrawable;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/zgesture/setting/TryActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/setting/TryActivity;

    .prologue
    .line 23
    iget v0, p0, Lcom/zte/zgesture/setting/TryActivity;->activityType:I

    return v0
.end method

.method static synthetic access$100(Lcom/zte/zgesture/setting/TryActivity;)Lcom/zte/zgesture/setting/GestureSetting;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/setting/TryActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    return-object v0
.end method

.method private changeSetting(Ljava/lang/String;)V
    .locals 2
    .param p1, "intentUri"    # Ljava/lang/String;

    .prologue
    .line 592
    iget v0, p0, Lcom/zte/zgesture/setting/TryActivity;->activityType:I

    packed-switch v0, :pswitch_data_0

    .line 605
    :goto_0
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->writeBack()V

    .line 606
    return-void

    .line 594
    :pswitch_0
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v1, "setting_air_v_app"

    invoke-virtual {v0, v1, p1}, Lcom/zte/zgesture/setting/GestureSetting;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 597
    :pswitch_1
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v1, "setting_air_z_app"

    invoke-virtual {v0, v1, p1}, Lcom/zte/zgesture/setting/GestureSetting;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 600
    :pswitch_2
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v1, "setting_air_w_app"

    invoke-virtual {v0, v1, p1}, Lcom/zte/zgesture/setting/GestureSetting;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 592
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initSwitch(Landroid/widget/Switch;)V
    .locals 2
    .param p1, "actionbarSwitch"    # Landroid/widget/Switch;

    .prologue
    .line 406
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->reloadSetting()V

    .line 407
    iget v0, p0, Lcom/zte/zgesture/setting/TryActivity;->activityType:I

    packed-switch v0, :pswitch_data_0

    .line 459
    :goto_0
    :pswitch_0
    return-void

    .line 409
    :pswitch_1
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v1, "setting_switch_app"

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 412
    :pswitch_2
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v1, "setting_close_app"

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 415
    :pswitch_3
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v1, "setting_screen_shot"

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 418
    :pswitch_4
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v1, "setting_call"

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 421
    :pswitch_5
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v1, "setting_call_turn"

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 424
    :pswitch_6
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v1, "setting_pocket"

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 427
    :pswitch_7
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v1, "setting_answer"

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 430
    :pswitch_8
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v1, "setting_change_to_receiver"

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 433
    :pswitch_9
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v1, "setting_close_screen"

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 436
    :pswitch_a
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v1, "setting_double_tap"

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 439
    :pswitch_b
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v1, "setting_shake"

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_0

    .line 442
    :pswitch_c
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v1, "setting_air_m"

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_0

    .line 445
    :pswitch_d
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v1, "setting_air_o"

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_0

    .line 448
    :pswitch_e
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v1, "setting_air_v"

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_0

    .line 451
    :pswitch_f
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v1, "setting_air_z"

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_0

    .line 454
    :pswitch_10
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v1, "setting_air_w"

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_0

    .line 407
    nop

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

.method private initTitleIcon(I)V
    .locals 8
    .param p1, "type"    # I

    .prologue
    const v7, 0x7f0900ac

    const v6, 0x7f0900a9

    const v5, 0x7f090072

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 126
    packed-switch p1, :pswitch_data_0

    .line 286
    :goto_0
    :pswitch_0
    return-void

    .line 128
    :pswitch_1
    sget v1, Lcom/zte/zgesture/tools/FeatureConfig;->mfvVersion:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 129
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->actionBarView:Lcom/zte/zgesture/ui/ActionBarView;

    invoke-virtual {v1}, Lcom/zte/zgesture/ui/ActionBarView;->getActionBarTitileView()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f09009c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 133
    :goto_1
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->introText:Landroid/widget/TextView;

    const v2, 0x7f090073

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 134
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->imgIntro:Landroid/widget/ImageView;

    const v2, 0x7f04001a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->mChooseAppBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->actionBarView:Lcom/zte/zgesture/ui/ActionBarView;

    invoke-virtual {v1}, Lcom/zte/zgesture/ui/ActionBarView;->getActionBarTitileView()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f090053

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 138
    :pswitch_2
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->actionBarView:Lcom/zte/zgesture/ui/ActionBarView;

    invoke-virtual {v1}, Lcom/zte/zgesture/ui/ActionBarView;->getActionBarTitileView()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f09005e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 139
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->introText:Landroid/widget/TextView;

    const v2, 0x7f090074

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 140
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->imgIntro:Landroid/widget/ImageView;

    const v2, 0x7f04001f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 141
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->mChooseAppBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 144
    :pswitch_3
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->actionBarView:Lcom/zte/zgesture/ui/ActionBarView;

    invoke-virtual {v1}, Lcom/zte/zgesture/ui/ActionBarView;->getActionBarTitileView()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f09005d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 145
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->introText:Landroid/widget/TextView;

    const v2, 0x7f090075

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 146
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->imgIntro:Landroid/widget/ImageView;

    const v2, 0x7f040018

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->mChooseAppBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 150
    :pswitch_4
    sget v1, Lcom/zte/zgesture/tools/FeatureConfig;->mfvVersion:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 151
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->actionBarView:Lcom/zte/zgesture/ui/ActionBarView;

    invoke-virtual {v1}, Lcom/zte/zgesture/ui/ActionBarView;->getActionBarTitileView()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f09009d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 156
    :goto_2
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->introText:Landroid/widget/TextView;

    const v2, 0x7f090076

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 157
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->imgIntro:Landroid/widget/ImageView;

    const v2, 0x7f04001d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 158
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->mChooseAppBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->actionBarView:Lcom/zte/zgesture/ui/ActionBarView;

    invoke-virtual {v1}, Lcom/zte/zgesture/ui/ActionBarView;->getActionBarTitileView()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f09005c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 161
    :pswitch_5
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->actionBarView:Lcom/zte/zgesture/ui/ActionBarView;

    invoke-virtual {v1}, Lcom/zte/zgesture/ui/ActionBarView;->getActionBarTitileView()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f090062

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 162
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->introText:Landroid/widget/TextView;

    const v2, 0x7f090077

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 163
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->imgIntro:Landroid/widget/ImageView;

    const v2, 0x7f040016

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 164
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->mChooseAppBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 167
    :pswitch_6
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->actionBarView:Lcom/zte/zgesture/ui/ActionBarView;

    invoke-virtual {v1}, Lcom/zte/zgesture/ui/ActionBarView;->getActionBarTitileView()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f090063

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 168
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->introText:Landroid/widget/TextView;

    const v2, 0x7f090078

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 169
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->imgIntro:Landroid/widget/ImageView;

    const v2, 0x7f040015

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 170
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->mChooseAppBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 173
    :pswitch_7
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->actionBarView:Lcom/zte/zgesture/ui/ActionBarView;

    invoke-virtual {v1}, Lcom/zte/zgesture/ui/ActionBarView;->getActionBarTitileView()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f090065

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 174
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->introText:Landroid/widget/TextView;

    const v2, 0x7f090079

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 175
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->imgIntro:Landroid/widget/ImageView;

    const v2, 0x7f040020

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 176
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->mChooseAppBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 179
    :pswitch_8
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->actionBarView:Lcom/zte/zgesture/ui/ActionBarView;

    invoke-virtual {v1}, Lcom/zte/zgesture/ui/ActionBarView;->getActionBarTitileView()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f090068

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 180
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->introText:Landroid/widget/TextView;

    const v2, 0x7f09006a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 181
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->imgIntro:Landroid/widget/ImageView;

    const v2, 0x7f040014

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 182
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->mChooseAppBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 185
    :pswitch_9
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->actionBarView:Lcom/zte/zgesture/ui/ActionBarView;

    invoke-virtual {v1}, Lcom/zte/zgesture/ui/ActionBarView;->getActionBarTitileView()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f090067

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 186
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->introText:Landroid/widget/TextView;

    const v2, 0x7f090069

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 187
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->imgIntro:Landroid/widget/ImageView;

    const v2, 0x7f040013

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 188
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->mChooseAppBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 191
    :pswitch_a
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->actionBarView:Lcom/zte/zgesture/ui/ActionBarView;

    invoke-virtual {v1}, Lcom/zte/zgesture/ui/ActionBarView;->getActionBarTitileView()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f09006b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 192
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->introText:Landroid/widget/TextView;

    const v2, 0x7f09006c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 193
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->imgIntro:Landroid/widget/ImageView;

    const v2, 0x7f040017

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 194
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->mChooseAppBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 197
    :pswitch_b
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->actionBarView:Lcom/zte/zgesture/ui/ActionBarView;

    invoke-virtual {v1}, Lcom/zte/zgesture/ui/ActionBarView;->getActionBarTitileView()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f09006d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 198
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->introText:Landroid/widget/TextView;

    const v2, 0x7f09006e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 199
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->imgIntro:Landroid/widget/ImageView;

    const v2, 0x7f040019

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 200
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->mChooseAppBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 203
    :pswitch_c
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->actionBarView:Lcom/zte/zgesture/ui/ActionBarView;

    invoke-virtual {v1}, Lcom/zte/zgesture/ui/ActionBarView;->getActionBarTitileView()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f09006f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 204
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->introText:Landroid/widget/TextView;

    const v2, 0x7f09009f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 205
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->imgIntro:Landroid/widget/ImageView;

    const v2, 0x7f04001e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 206
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->mChooseAppBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 209
    :pswitch_d
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->actionBarView:Lcom/zte/zgesture/ui/ActionBarView;

    invoke-virtual {v1}, Lcom/zte/zgesture/ui/ActionBarView;->getActionBarTitileView()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0900a2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 210
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->introText:Landroid/widget/TextView;

    const v2, 0x7f0900a4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 211
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->imgIntro:Landroid/widget/ImageView;

    const v2, 0x7f04000e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 212
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->mChooseAppBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 215
    :pswitch_e
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->actionBarView:Lcom/zte/zgesture/ui/ActionBarView;

    invoke-virtual {v1}, Lcom/zte/zgesture/ui/ActionBarView;->getActionBarTitileView()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0900a3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 225
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->introText:Landroid/widget/TextView;

    const v2, 0x7f0900a5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 226
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->imgIntro:Landroid/widget/ImageView;

    const v2, 0x7f04000f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 227
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->mChooseAppBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 231
    :pswitch_f
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v2, "setting_air_v_app"

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/setting/GestureSetting;->getAppTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "str":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 233
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->actionBarView:Lcom/zte/zgesture/ui/ActionBarView;

    invoke-virtual {v1}, Lcom/zte/zgesture/ui/ActionBarView;->getActionBarTitileView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/zte/zgesture/setting/TryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->mTryBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 235
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->mChooseAppBtn:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(I)V

    .line 241
    :goto_3
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->introText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/TryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900a6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v4, "setting_air_v_app"

    invoke-virtual {v3, v4}, Lcom/zte/zgesture/setting/GestureSetting;->getAppTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/TryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900ad

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->imgIntro:Landroid/widget/ImageView;

    const v2, 0x7f040010

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 237
    :cond_2
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->actionBarView:Lcom/zte/zgesture/ui/ActionBarView;

    invoke-virtual {v1}, Lcom/zte/zgesture/ui/ActionBarView;->getActionBarTitileView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->mChooseAppBtn:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(I)V

    .line 239
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->mTryBtn:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    .line 249
    .end local v0    # "str":Ljava/lang/String;
    :pswitch_10
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v2, "setting_air_z_app"

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/setting/GestureSetting;->getAppTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    .restart local v0    # "str":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 251
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->actionBarView:Lcom/zte/zgesture/ui/ActionBarView;

    invoke-virtual {v1}, Lcom/zte/zgesture/ui/ActionBarView;->getActionBarTitileView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/zte/zgesture/setting/TryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->mTryBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 253
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->mChooseAppBtn:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(I)V

    .line 259
    :goto_4
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->introText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/TryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900a7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v4, "setting_air_z_app"

    invoke-virtual {v3, v4}, Lcom/zte/zgesture/setting/GestureSetting;->getAppTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/TryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900ad

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->imgIntro:Landroid/widget/ImageView;

    const v2, 0x7f040012

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 255
    :cond_3
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->actionBarView:Lcom/zte/zgesture/ui/ActionBarView;

    invoke-virtual {v1}, Lcom/zte/zgesture/ui/ActionBarView;->getActionBarTitileView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->mChooseAppBtn:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(I)V

    .line 257
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->mTryBtn:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4

    .line 266
    .end local v0    # "str":Ljava/lang/String;
    :pswitch_11
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v2, "setting_air_w_app"

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/setting/GestureSetting;->getAppTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    .restart local v0    # "str":Ljava/lang/String;
    if-nez v0, :cond_4

    .line 268
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->actionBarView:Lcom/zte/zgesture/ui/ActionBarView;

    invoke-virtual {v1}, Lcom/zte/zgesture/ui/ActionBarView;->getActionBarTitileView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/zte/zgesture/setting/TryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->mTryBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 270
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->mChooseAppBtn:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(I)V

    .line 276
    :goto_5
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->introText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/TryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900a8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v4, "setting_air_w_app"

    invoke-virtual {v3, v4}, Lcom/zte/zgesture/setting/GestureSetting;->getAppTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/TryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900ad

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->imgIntro:Landroid/widget/ImageView;

    const v2, 0x7f040011

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 272
    :cond_4
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->actionBarView:Lcom/zte/zgesture/ui/ActionBarView;

    invoke-virtual {v1}, Lcom/zte/zgesture/ui/ActionBarView;->getActionBarTitileView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->mChooseAppBtn:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(I)V

    .line 274
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->mTryBtn:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_5

    .line 126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private resetTitle()V
    .locals 6

    .prologue
    .line 560
    const/4 v1, 0x0

    .line 561
    .local v1, "str":Ljava/lang/String;
    const/4 v0, 0x0

    .line 562
    .local v0, "intro":Ljava/lang/String;
    iget v2, p0, Lcom/zte/zgesture/setting/TryActivity;->activityType:I

    packed-switch v2, :pswitch_data_0

    .line 578
    :goto_0
    if-nez v1, :cond_0

    .line 579
    iget-object v2, p0, Lcom/zte/zgesture/setting/TryActivity;->actionBarView:Lcom/zte/zgesture/ui/ActionBarView;

    invoke-virtual {v2}, Lcom/zte/zgesture/ui/ActionBarView;->getActionBarTitileView()Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f090072

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 580
    iget-object v2, p0, Lcom/zte/zgesture/setting/TryActivity;->mTryBtn:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 581
    iget-object v2, p0, Lcom/zte/zgesture/setting/TryActivity;->mChooseAppBtn:Landroid/widget/Button;

    const v3, 0x7f0900a9

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 588
    :goto_1
    iget-object v2, p0, Lcom/zte/zgesture/setting/TryActivity;->introText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/TryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900ad

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    return-void

    .line 564
    :pswitch_0
    iget-object v2, p0, Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v3, "setting_air_v_app"

    invoke-virtual {v2, v3}, Lcom/zte/zgesture/setting/GestureSetting;->getAppTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 565
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/TryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 566
    goto :goto_0

    .line 568
    :pswitch_1
    iget-object v2, p0, Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v3, "setting_air_z_app"

    invoke-virtual {v2, v3}, Lcom/zte/zgesture/setting/GestureSetting;->getAppTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 569
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/TryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 570
    goto :goto_0

    .line 572
    :pswitch_2
    iget-object v2, p0, Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v3, "setting_air_w_app"

    invoke-virtual {v2, v3}, Lcom/zte/zgesture/setting/GestureSetting;->getAppTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 573
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/TryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 574
    goto :goto_0

    .line 583
    :cond_0
    iget-object v2, p0, Lcom/zte/zgesture/setting/TryActivity;->actionBarView:Lcom/zte/zgesture/ui/ActionBarView;

    invoke-virtual {v2}, Lcom/zte/zgesture/ui/ActionBarView;->getActionBarTitileView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    iget-object v2, p0, Lcom/zte/zgesture/setting/TryActivity;->mChooseAppBtn:Landroid/widget/Button;

    const v3, 0x7f0900ac

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 585
    iget-object v2, p0, Lcom/zte/zgesture/setting/TryActivity;->mTryBtn:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 562
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private startDemo(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 473
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 474
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/zte/zgesture/setting/TryActivity;->startActivity(Landroid/content/Intent;)V

    .line 475
    return-void
.end method

.method private startDemo(Ljava/lang/Class;I)V
    .locals 2
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 479
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 480
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 481
    invoke-virtual {p0, v0}, Lcom/zte/zgesture/setting/TryActivity;->startActivity(Landroid/content/Intent;)V

    .line 482
    return-void
.end method

.method private switchCheck(Landroid/widget/Switch;)V
    .locals 1
    .param p1, "actionbarSwitch"    # Landroid/widget/Switch;

    .prologue
    .line 330
    new-instance v0, Lcom/zte/zgesture/setting/TryActivity$2;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/setting/TryActivity$2;-><init>(Lcom/zte/zgesture/setting/TryActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 403
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 550
    invoke-super {p0, p1, p2, p3}, Lcom/zte/mifavor/widget/ActivityZTE;->onActivityResult(IILandroid/content/Intent;)V

    .line 552
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 553
    const-string v1, "app_intent"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, "appIntent":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/zte/zgesture/setting/TryActivity;->changeSetting(Ljava/lang/String;)V

    .line 555
    invoke-direct {p0}, Lcom/zte/zgesture/setting/TryActivity;->resetTitle()V

    .line 557
    .end local v0    # "appIntent":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 490
    iget v0, p0, Lcom/zte/zgesture/setting/TryActivity;->activityType:I

    packed-switch v0, :pswitch_data_0

    .line 546
    :goto_0
    :pswitch_0
    return-void

    .line 492
    :pswitch_1
    const-class v0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;

    invoke-direct {p0, v0}, Lcom/zte/zgesture/setting/TryActivity;->startDemo(Ljava/lang/Class;)V

    goto :goto_0

    .line 495
    :pswitch_2
    const-class v0, Lcom/zte/zgesture/setting/CloseAppDemoActivity;

    invoke-direct {p0, v0}, Lcom/zte/zgesture/setting/TryActivity;->startDemo(Ljava/lang/Class;)V

    goto :goto_0

    .line 498
    :pswitch_3
    const-class v0, Lcom/zte/zgesture/setting/ScreenshotDemoActivity;

    invoke-direct {p0, v0}, Lcom/zte/zgesture/setting/TryActivity;->startDemo(Ljava/lang/Class;)V

    goto :goto_0

    .line 501
    :pswitch_4
    const-class v0, Lcom/zte/zgesture/setting/CallDemoActivity;

    invoke-direct {p0, v0}, Lcom/zte/zgesture/setting/TryActivity;->startDemo(Ljava/lang/Class;)V

    goto :goto_0

    .line 504
    :pswitch_5
    const-class v0, Lcom/zte/zgesture/setting/AnswerDemoActivity;

    invoke-direct {p0, v0}, Lcom/zte/zgesture/setting/TryActivity;->startDemo(Ljava/lang/Class;)V

    goto :goto_0

    .line 507
    :pswitch_6
    const-class v0, Lcom/zte/zgesture/setting/TurnDemoActivity;

    invoke-direct {p0, v0}, Lcom/zte/zgesture/setting/TryActivity;->startDemo(Ljava/lang/Class;)V

    goto :goto_0

    .line 510
    :pswitch_7
    const-class v0, Lcom/zte/zgesture/setting/AlarmPatMuteDemoActivity;

    invoke-direct {p0, v0}, Lcom/zte/zgesture/setting/TryActivity;->startDemo(Ljava/lang/Class;)V

    goto :goto_0

    .line 513
    :pswitch_8
    const-class v0, Lcom/zte/zgesture/setting/AlarmFlipStopDemoActivity;

    invoke-direct {p0, v0}, Lcom/zte/zgesture/setting/TryActivity;->startDemo(Ljava/lang/Class;)V

    goto :goto_0

    .line 516
    :pswitch_9
    const-class v0, Lcom/zte/zgesture/setting/ChangeReceiverDemoActivity;

    invoke-direct {p0, v0}, Lcom/zte/zgesture/setting/TryActivity;->startDemo(Ljava/lang/Class;)V

    goto :goto_0

    .line 519
    :pswitch_a
    const-class v0, Lcom/zte/zgesture/setting/CloseScreenDemoActivity;

    invoke-direct {p0, v0}, Lcom/zte/zgesture/setting/TryActivity;->startDemo(Ljava/lang/Class;)V

    goto :goto_0

    .line 522
    :pswitch_b
    const-class v0, Lcom/zte/zgesture/setting/DoubleTapDemoActivity;

    invoke-direct {p0, v0}, Lcom/zte/zgesture/setting/TryActivity;->startDemo(Ljava/lang/Class;)V

    goto :goto_0

    .line 525
    :pswitch_c
    const-class v0, Lcom/zte/zgesture/setting/ShakeDemoActivity;

    invoke-direct {p0, v0}, Lcom/zte/zgesture/setting/TryActivity;->startDemo(Ljava/lang/Class;)V

    goto :goto_0

    .line 528
    :pswitch_d
    const-class v0, Lcom/zte/zgesture/setting/AirGesturesDemoActivity;

    const/16 v1, 0xe

    invoke-direct {p0, v0, v1}, Lcom/zte/zgesture/setting/TryActivity;->startDemo(Ljava/lang/Class;I)V

    goto :goto_0

    .line 531
    :pswitch_e
    const-class v0, Lcom/zte/zgesture/setting/AirGesturesDemoActivity;

    const/16 v1, 0xf

    invoke-direct {p0, v0, v1}, Lcom/zte/zgesture/setting/TryActivity;->startDemo(Ljava/lang/Class;I)V

    goto :goto_0

    .line 534
    :pswitch_f
    const-class v0, Lcom/zte/zgesture/setting/AirGesturesDemoActivity;

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/zte/zgesture/setting/TryActivity;->startDemo(Ljava/lang/Class;I)V

    goto :goto_0

    .line 537
    :pswitch_10
    const-class v0, Lcom/zte/zgesture/setting/AirGesturesDemoActivity;

    const/16 v1, 0x11

    invoke-direct {p0, v0, v1}, Lcom/zte/zgesture/setting/TryActivity;->startDemo(Ljava/lang/Class;I)V

    goto :goto_0

    .line 540
    :pswitch_11
    const-class v0, Lcom/zte/zgesture/setting/AirGesturesDemoActivity;

    const/16 v1, 0x12

    invoke-direct {p0, v0, v1}, Lcom/zte/zgesture/setting/TryActivity;->startDemo(Ljava/lang/Class;I)V

    goto :goto_0

    .line 490
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/ActivityZTE;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v2, 0x7f030055

    invoke-virtual {p0, v2}, Lcom/zte/zgesture/setting/TryActivity;->setContentView(I)V

    .line 65
    sget-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->mifavorWidget:Z

    if-eqz v2, :cond_0

    .line 66
    invoke-static {p0}, Lcom/zte/zgesture/tools/Utils;->getIndicatorColor(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/zte/zgesture/setting/TryActivity;->setIndicatorColor(I)V

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/TryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/zgesture/setting/GestureSetting;->getGestureSetting(Landroid/content/Context;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    .line 69
    iget-object v2, p0, Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    invoke-virtual {v2}, Lcom/zte/zgesture/setting/GestureSetting;->reloadSetting()V

    .line 71
    const v2, 0x7f060066

    invoke-virtual {p0, v2}, Lcom/zte/zgesture/setting/TryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/zte/zgesture/setting/TryActivity;->introText:Landroid/widget/TextView;

    .line 72
    iget-object v2, p0, Lcom/zte/zgesture/setting/TryActivity;->introText:Landroid/widget/TextView;

    new-instance v3, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v3}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 73
    const v2, 0x7f060065

    invoke-virtual {p0, v2}, Lcom/zte/zgesture/setting/TryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/zte/zgesture/setting/TryActivity;->imgIntro:Landroid/widget/ImageView;

    .line 74
    const v2, 0x7f060069

    invoke-virtual {p0, v2}, Lcom/zte/zgesture/setting/TryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/zte/zgesture/setting/TryActivity;->mTryBtn:Landroid/widget/Button;

    .line 75
    iget-object v2, p0, Lcom/zte/zgesture/setting/TryActivity;->mTryBtn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v2, 0x7f060068

    invoke-virtual {p0, v2}, Lcom/zte/zgesture/setting/TryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/zte/zgesture/setting/TryActivity;->mChooseAppBtn:Landroid/widget/Button;

    .line 79
    iget-object v2, p0, Lcom/zte/zgesture/setting/TryActivity;->mChooseAppBtn:Landroid/widget/Button;

    new-instance v3, Lcom/zte/zgesture/setting/TryActivity$1;

    invoke-direct {v3, p0}, Lcom/zte/zgesture/setting/TryActivity$1;-><init>(Lcom/zte/zgesture/setting/TryActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/TryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/zgesture/setting/TryActivity;->actionBar:Landroid/app/ActionBar;

    .line 88
    new-instance v2, Lcom/zte/zgesture/ui/ActionBarView;

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/TryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/zgesture/setting/TryActivity;->actionBar:Landroid/app/ActionBar;

    invoke-direct {v2, v3, v4}, Lcom/zte/zgesture/ui/ActionBarView;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    iput-object v2, p0, Lcom/zte/zgesture/setting/TryActivity;->actionBarView:Lcom/zte/zgesture/ui/ActionBarView;

    .line 89
    iget-object v2, p0, Lcom/zte/zgesture/setting/TryActivity;->actionBarView:Lcom/zte/zgesture/ui/ActionBarView;

    invoke-virtual {v2}, Lcom/zte/zgesture/ui/ActionBarView;->initActionBar()V

    .line 90
    iget-object v2, p0, Lcom/zte/zgesture/setting/TryActivity;->actionBarView:Lcom/zte/zgesture/ui/ActionBarView;

    invoke-virtual {v2}, Lcom/zte/zgesture/ui/ActionBarView;->getActionBarSwitch()Landroid/widget/Switch;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/zgesture/setting/TryActivity;->mActionBarSwitch:Landroid/widget/Switch;

    .line 91
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/TryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "enableSwitch"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 92
    .local v0, "enableSwitch":Z
    if-eqz v0, :cond_2

    .line 93
    iget-object v2, p0, Lcom/zte/zgesture/setting/TryActivity;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {p0, v2}, Lcom/zte/zgesture/setting/TryActivity;->initSwitch(Landroid/widget/Switch;)V

    .line 94
    iget-object v2, p0, Lcom/zte/zgesture/setting/TryActivity;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {p0, v2}, Lcom/zte/zgesture/setting/TryActivity;->switchCheck(Landroid/widget/Switch;)V

    .line 95
    iget-object v2, p0, Lcom/zte/zgesture/setting/TryActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v3, "setting_all"

    invoke-virtual {v2, v3}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v1

    .line 96
    .local v1, "isEnabled":Z
    iget-object v2, p0, Lcom/zte/zgesture/setting/TryActivity;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 101
    .end local v1    # "isEnabled":Z
    :goto_0
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/TryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "type"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/zte/zgesture/setting/TryActivity;->activityType:I

    .line 102
    iget v2, p0, Lcom/zte/zgesture/setting/TryActivity;->activityType:I

    invoke-direct {p0, v2}, Lcom/zte/zgesture/setting/TryActivity;->initTitleIcon(I)V

    .line 103
    iget-object v2, p0, Lcom/zte/zgesture/setting/TryActivity;->imgIntro:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v2, p0, Lcom/zte/zgesture/setting/TryActivity;->animIntro:Landroid/graphics/drawable/AnimationDrawable;

    .line 104
    iget-object v2, p0, Lcom/zte/zgesture/setting/TryActivity;->animIntro:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_1

    .line 105
    iget-object v2, p0, Lcom/zte/zgesture/setting/TryActivity;->animIntro:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 108
    :cond_1
    return-void

    .line 98
    :cond_2
    iget-object v2, p0, Lcom/zte/zgesture/setting/TryActivity;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 291
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity;->animIntro:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 292
    iput-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->animIntro:Landroid/graphics/drawable/AnimationDrawable;

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity;->actionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_1

    .line 295
    iput-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->actionBar:Landroid/app/ActionBar;

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity;->imgIntro:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 298
    iput-object v1, p0, Lcom/zte/zgesture/setting/TryActivity;->imgIntro:Landroid/widget/ImageView;

    .line 301
    :cond_2
    invoke-super {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->onDestroy()V

    .line 302
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 463
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 468
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/ActivityZTE;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 465
    :pswitch_0
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/TryActivity;->finish()V

    .line 466
    const/4 v0, 0x1

    goto :goto_0

    .line 463
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 307
    invoke-super {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->onPause()V

    .line 308
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 313
    invoke-super {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->onResume()V

    .line 314
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 319
    invoke-super {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->onStart()V

    .line 320
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {p0, v0}, Lcom/zte/zgesture/setting/TryActivity;->initSwitch(Landroid/widget/Switch;)V

    .line 321
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 326
    invoke-super {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->onStop()V

    .line 327
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/ActivityZTE;->onWindowFocusChanged(Z)V

    .line 114
    if-eqz p1, :cond_1

    .line 115
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity;->animIntro:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity;->animIntro:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity;->animIntro:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/zte/zgesture/setting/TryActivity;->animIntro:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0
.end method
