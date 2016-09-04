.class public Lcom/android/mipop/cropimage/MenuActivity;
.super Landroid/app/Activity;
.source "MenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mipop/cropimage/MenuActivity$HomeKeyEventBroadCastReceiver;
    }
.end annotation


# instance fields
.field private handler4LongClick:Landroid/os/Handler;

.field private imageViewLockScreen:Landroid/widget/ImageView;

.field private imageViewMute:Landroid/widget/ImageView;

.field private imageViewPowerOff:Landroid/widget/ImageView;

.field private imageViewReboot:Landroid/widget/ImageView;

.field private imageViewScreenshots:Landroid/widget/ImageView;

.field private imageViewVolume:Landroid/widget/ImageView;

.field private reNameDialog:Landroid/app/Dialog;

.field private runnable4LongClick:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/cropimage/MenuActivity;->handler4LongClick:Landroid/os/Handler;

    .line 236
    new-instance v0, Lcom/android/mipop/cropimage/MenuActivity$9;

    invoke-direct {v0, p0}, Lcom/android/mipop/cropimage/MenuActivity$9;-><init>(Lcom/android/mipop/cropimage/MenuActivity;)V

    iput-object v0, p0, Lcom/android/mipop/cropimage/MenuActivity;->runnable4LongClick:Ljava/lang/Runnable;

    .line 250
    return-void
.end method

.method static synthetic access$000(Lcom/android/mipop/cropimage/MenuActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mipop/cropimage/MenuActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/mipop/cropimage/MenuActivity;->timeOut()V

    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 231
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 232
    .local v0, "scale":F
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lxg dip2px = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-float v3, p1, v0

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    mul-float v1, p1, v0

    add-float/2addr v1, v4

    float-to-int v1, v1

    return v1
.end method

.method private timeOut()V
    .locals 2

    .prologue
    .line 243
    new-instance v0, Lcom/android/mipop/cropimage/TakePhoto;

    invoke-direct {v0, p0}, Lcom/android/mipop/cropimage/TakePhoto;-><init>(Landroid/content/Context;)V

    .line 244
    .local v0, "tp":Lcom/android/mipop/cropimage/TakePhoto;
    invoke-virtual {v0}, Lcom/android/mipop/cropimage/TakePhoto;->start()V

    .line 245
    iget-object v1, p0, Lcom/android/mipop/cropimage/MenuActivity;->reNameDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 246
    invoke-static {}, Lcom/android/mipop/api/MyApplication;->getInstance()Lcom/android/mipop/api/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mipop/api/MyApplication;->showMipopForce()V

    .line 247
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v13, 0x8a

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v10, 0x7f0a0105

    invoke-virtual {p0, v10}, Lcom/android/mipop/cropimage/MenuActivity;->setTheme(I)V

    .line 58
    const-string v10, "HouJiong"

    const-string v11, "MenuActivity onCreate"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/MenuActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f030073

    const v10, 0x7f0600db

    invoke-virtual {p0, v10}, Lcom/android/mipop/cropimage/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    invoke-virtual {v11, v12, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 62
    .local v2, "layout":Landroid/view/View;
    const v10, 0x7f0600fe

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/android/mipop/cropimage/MenuActivity;->imageViewPowerOff:Landroid/widget/ImageView;

    .line 63
    const v10, 0x7f060101

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/android/mipop/cropimage/MenuActivity;->imageViewReboot:Landroid/widget/ImageView;

    .line 64
    const v10, 0x7f060104

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/android/mipop/cropimage/MenuActivity;->imageViewLockScreen:Landroid/widget/ImageView;

    .line 65
    const v10, 0x7f060107

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/android/mipop/cropimage/MenuActivity;->imageViewScreenshots:Landroid/widget/ImageView;

    .line 66
    const v10, 0x7f06010a

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/android/mipop/cropimage/MenuActivity;->imageViewVolume:Landroid/widget/ImageView;

    .line 67
    const v10, 0x7f06010d

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/android/mipop/cropimage/MenuActivity;->imageViewMute:Landroid/widget/ImageView;

    .line 68
    iget-object v10, p0, Lcom/android/mipop/cropimage/MenuActivity;->imageViewPowerOff:Landroid/widget/ImageView;

    invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 69
    iget-object v10, p0, Lcom/android/mipop/cropimage/MenuActivity;->imageViewReboot:Landroid/widget/ImageView;

    invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 70
    iget-object v10, p0, Lcom/android/mipop/cropimage/MenuActivity;->imageViewLockScreen:Landroid/widget/ImageView;

    invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 71
    iget-object v10, p0, Lcom/android/mipop/cropimage/MenuActivity;->imageViewScreenshots:Landroid/widget/ImageView;

    invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 72
    iget-object v10, p0, Lcom/android/mipop/cropimage/MenuActivity;->imageViewVolume:Landroid/widget/ImageView;

    invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 73
    iget-object v10, p0, Lcom/android/mipop/cropimage/MenuActivity;->imageViewMute:Landroid/widget/ImageView;

    invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 75
    const v10, 0x7f0600fd

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 76
    .local v6, "power_off":Landroid/widget/LinearLayout;
    new-instance v10, Lcom/android/mipop/cropimage/MenuActivity$1;

    invoke-direct {v10, p0}, Lcom/android/mipop/cropimage/MenuActivity$1;-><init>(Lcom/android/mipop/cropimage/MenuActivity;)V

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const v10, 0x7f060100

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 92
    .local v7, "reboot":Landroid/widget/LinearLayout;
    new-instance v10, Lcom/android/mipop/cropimage/MenuActivity$2;

    invoke-direct {v10, p0}, Lcom/android/mipop/cropimage/MenuActivity$2;-><init>(Lcom/android/mipop/cropimage/MenuActivity;)V

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v10, 0x7f060103

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 109
    .local v3, "lock_screen":Landroid/widget/LinearLayout;
    new-instance v10, Lcom/android/mipop/cropimage/MenuActivity$3;

    invoke-direct {v10, p0}, Lcom/android/mipop/cropimage/MenuActivity$3;-><init>(Lcom/android/mipop/cropimage/MenuActivity;)V

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v10, 0x7f060106

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 127
    .local v8, "screenshots":Landroid/widget/LinearLayout;
    new-instance v10, Lcom/android/mipop/cropimage/MenuActivity$4;

    invoke-direct {v10, p0}, Lcom/android/mipop/cropimage/MenuActivity$4;-><init>(Lcom/android/mipop/cropimage/MenuActivity;)V

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    const v10, 0x7f060109

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 149
    .local v9, "volume":Landroid/widget/LinearLayout;
    new-instance v10, Lcom/android/mipop/cropimage/MenuActivity$5;

    invoke-direct {v10, p0}, Lcom/android/mipop/cropimage/MenuActivity$5;-><init>(Lcom/android/mipop/cropimage/MenuActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const v10, 0x7f06010c

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 163
    .local v4, "mute":Landroid/widget/LinearLayout;
    new-instance v10, Lcom/android/mipop/cropimage/MenuActivity$6;

    invoke-direct {v10, p0}, Lcom/android/mipop/cropimage/MenuActivity$6;-><init>(Lcom/android/mipop/cropimage/MenuActivity;)V

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    new-instance v10, Landroid/app/Dialog;

    const v11, 0x7f0a0106

    invoke-direct {v10, p0, v11}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v10, p0, Lcom/android/mipop/cropimage/MenuActivity;->reNameDialog:Landroid/app/Dialog;

    .line 189
    const-string v10, "MenuActivity.java"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "com.android.mipop.widget.Until.SCREEM_WIDTH == "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    sget v10, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    const/16 v11, 0x438

    if-lt v10, v11, :cond_0

    .line 192
    sget v10, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    const/high16 v11, 0x41800000    # 16.0f

    invoke-static {p0, v11}, Lcom/android/mipop/cropimage/MenuActivity;->dip2px(Landroid/content/Context;F)I

    move-result v11

    sub-int v1, v10, v11

    .line 193
    .local v1, "MenuWidth":I
    const/high16 v10, 0x43600000    # 224.0f

    invoke-static {p0, v10}, Lcom/android/mipop/cropimage/MenuActivity;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 203
    .local v0, "MenuHeight":I
    :goto_0
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v1, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 207
    .local v5, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v10, p0, Lcom/android/mipop/cropimage/MenuActivity;->reNameDialog:Landroid/app/Dialog;

    invoke-virtual {v10, v2, v5}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    iget-object v10, p0, Lcom/android/mipop/cropimage/MenuActivity;->reNameDialog:Landroid/app/Dialog;

    new-instance v11, Lcom/android/mipop/cropimage/MenuActivity$7;

    invoke-direct {v11, p0}, Lcom/android/mipop/cropimage/MenuActivity$7;-><init>(Lcom/android/mipop/cropimage/MenuActivity;)V

    invoke-virtual {v10, v11}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 218
    iget-object v10, p0, Lcom/android/mipop/cropimage/MenuActivity;->reNameDialog:Landroid/app/Dialog;

    new-instance v11, Lcom/android/mipop/cropimage/MenuActivity$8;

    invoke-direct {v11, p0}, Lcom/android/mipop/cropimage/MenuActivity$8;-><init>(Lcom/android/mipop/cropimage/MenuActivity;)V

    invoke-virtual {v10, v11}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 226
    invoke-static {}, Lcom/android/mipop/api/MyApplication;->getInstance()Lcom/android/mipop/api/MyApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mipop/api/MyApplication;->hideMipopForce()V

    .line 227
    iget-object v10, p0, Lcom/android/mipop/cropimage/MenuActivity;->handler4LongClick:Landroid/os/Handler;

    iget-object v11, p0, Lcom/android/mipop/cropimage/MenuActivity;->runnable4LongClick:Ljava/lang/Runnable;

    const-wide/16 v12, 0x32

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 228
    return-void

    .line 194
    .end local v0    # "MenuHeight":I
    .end local v1    # "MenuWidth":I
    .end local v5    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    sget v10, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    const/16 v11, 0x244

    if-le v10, v11, :cond_1

    .line 195
    const/16 v1, 0x213

    .line 196
    .restart local v1    # "MenuWidth":I
    const/16 v0, 0x19c

    .restart local v0    # "MenuHeight":I
    goto :goto_0

    .line 198
    .end local v0    # "MenuHeight":I
    .end local v1    # "MenuWidth":I
    :cond_1
    sget v10, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    add-int/lit8 v1, v10, -0x28

    .line 199
    .restart local v1    # "MenuWidth":I
    int-to-double v10, v1

    const-wide/high16 v12, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v10, v12

    double-to-int v0, v10

    .restart local v0    # "MenuHeight":I
    goto :goto_0
.end method
