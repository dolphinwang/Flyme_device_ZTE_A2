.class public Lcom/android/mipop/MIPopActivity;
.super Lcom/zte/mifavor/widget/ActivityZTE;
.source "MIPopActivity.java"


# static fields
.field private static mInstance:Lcom/android/mipop/MIPopActivity;


# instance fields
.field private final DBG:Z

.field private TAG:Ljava/lang/String;

.field private changeKey:Landroid/widget/RelativeLayout;

.field changeKeyOnClickListener:Landroid/view/View$OnClickListener;

.field private image:Landroid/widget/ImageView;

.field private isMipopClicked:Z

.field mContext:Landroid/content/Context;

.field private mMIPopSwitch:Lcom/zte/mifavor/widget/SwitchZTE;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mipop/MIPopActivity;->mInstance:Lcom/android/mipop/MIPopActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ActivityZTE;-><init>()V

    .line 96
    const-string v0, "Suhao.MIPopActivity"

    iput-object v0, p0, Lcom/android/mipop/MIPopActivity;->TAG:Ljava/lang/String;

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mipop/MIPopActivity;->DBG:Z

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mipop/MIPopActivity;->isMipopClicked:Z

    .line 160
    new-instance v0, Lcom/android/mipop/MIPopActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mipop/MIPopActivity$2;-><init>(Lcom/android/mipop/MIPopActivity;)V

    iput-object v0, p0, Lcom/android/mipop/MIPopActivity;->changeKeyOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mipop/MIPopActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/mipop/MIPopActivity;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/mipop/MIPopActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mipop/MIPopActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mipop/MIPopActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/mipop/MIPopActivity;->modifyDatabaseMipop(Z)V

    return-void
.end method

.method public static getInstance()Lcom/android/mipop/MIPopActivity;
    .locals 1

    .prologue
    .line 219
    sget-object v0, Lcom/android/mipop/MIPopActivity;->mInstance:Lcom/android/mipop/MIPopActivity;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/mipop/MIPopActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method

.method private modifyDatabaseMipop(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 198
    iget-object v1, p0, Lcom/android/mipop/MIPopActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 199
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 200
    const-string v2, "MIPOP"

    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/android/mipop/api/MyApplication;

    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 206
    :goto_0
    return-void

    .line 203
    :cond_0
    const-string v2, "MIPOP"

    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/android/mipop/api/MyApplication;

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private updateIndicatorColor()V
    .locals 4

    .prologue
    .line 224
    const-string v1, "color_sb"

    .line 225
    .local v1, "ACTIONBAR_BG_COLOR_KEY":Ljava/lang/String;
    const v0, -0x40babd

    .line 227
    .local v0, "ACTIONBAR_BG_COLOR_DEFAULT_VALUE":I
    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 229
    .local v2, "color":I
    invoke-virtual {p0, v2}, Lcom/android/mipop/MIPopActivity;->setIndicatorColor(I)V

    .line 230
    return-void
.end method

.method private updateMipopCheckBoxByDb()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 169
    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/android/mipop/api/MyApplication;

    invoke-virtual {v1}, Lcom/android/mipop/api/MyApplication;->getMipopStatus()I

    move-result v0

    .line 170
    .local v0, "mipopContent":I
    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/android/mipop/api/MyApplication;

    if-ne v2, v0, :cond_1

    .line 171
    iget-object v1, p0, Lcom/android/mipop/MIPopActivity;->mMIPopSwitch:Lcom/zte/mifavor/widget/SwitchZTE;

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/android/mipop/MIPopActivity;->mMIPopSwitch:Lcom/zte/mifavor/widget/SwitchZTE;

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/SwitchZTE;->setChecked(Z)V

    .line 183
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/android/mipop/MIPopActivity;->TAG:Ljava/lang/String;

    const-string v2, "mMiPop is null !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 177
    :cond_1
    iget-object v1, p0, Lcom/android/mipop/MIPopActivity;->mMIPopSwitch:Lcom/zte/mifavor/widget/SwitchZTE;

    if-eqz v1, :cond_2

    .line 178
    iget-object v1, p0, Lcom/android/mipop/MIPopActivity;->mMIPopSwitch:Lcom/zte/mifavor/widget/SwitchZTE;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/SwitchZTE;->setChecked(Z)V

    goto :goto_0

    .line 180
    :cond_2
    iget-object v1, p0, Lcom/android/mipop/MIPopActivity;->TAG:Ljava/lang/String;

    const-string v2, "mMiPop is null !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getMiPopIsClicked()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/android/mipop/MIPopActivity;->isMipopClicked:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0x14

    const/4 v9, -0x2

    const/4 v8, 0x0

    .line 113
    const-string v5, "onCreate()"

    invoke-direct {p0, v5}, Lcom/android/mipop/MIPopActivity;->log(Ljava/lang/String;)V

    .line 114
    sput-object p0, Lcom/android/mipop/MIPopActivity;->mInstance:Lcom/android/mipop/MIPopActivity;

    .line 115
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/ActivityZTE;->onCreate(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    .line 118
    .local v2, "ab":Landroid/app/ActionBar;
    new-instance v5, Lcom/zte/mifavor/widget/SwitchZTE;

    invoke-direct {v5, p0}, Lcom/zte/mifavor/widget/SwitchZTE;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/mipop/MIPopActivity;->mMIPopSwitch:Lcom/zte/mifavor/widget/SwitchZTE;

    .line 119
    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0800ac

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 121
    .local v4, "padding":I
    iget-object v5, p0, Lcom/android/mipop/MIPopActivity;->mMIPopSwitch:Lcom/zte/mifavor/widget/SwitchZTE;

    invoke-virtual {v5, v8, v8, v4, v8}, Lcom/zte/mifavor/widget/SwitchZTE;->setPadding(IIII)V

    .line 122
    invoke-virtual {v2, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 124
    iget-object v5, p0, Lcom/android/mipop/MIPopActivity;->mMIPopSwitch:Lcom/zte/mifavor/widget/SwitchZTE;

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x15

    invoke-direct {v6, v9, v9, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v5, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 130
    const-string v1, "color_sb"

    .line 131
    .local v1, "ACTIONBAR_BG_COLOR_KEY":Ljava/lang/String;
    const v0, -0x40babd

    .line 132
    .local v0, "ACTIONBAR_BG_COLOR_DEFAULT_VALUE":I
    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 134
    .local v3, "color":I
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 137
    const v5, 0x7f030072

    invoke-virtual {p0, v5}, Lcom/android/mipop/MIPopActivity;->setContentView(I)V

    .line 139
    const v5, 0x7f0600fb

    invoke-virtual {p0, v5}, Lcom/android/mipop/MIPopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/android/mipop/MIPopActivity;->changeKey:Landroid/widget/RelativeLayout;

    .line 140
    iget-object v5, p0, Lcom/android/mipop/MIPopActivity;->changeKey:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setLayoutDirection(I)V

    .line 141
    iget-object v5, p0, Lcom/android/mipop/MIPopActivity;->changeKey:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/android/mipop/MIPopActivity;->changeKeyOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    const v5, 0x7f0600fc

    invoke-virtual {p0, v5}, Lcom/android/mipop/MIPopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/mipop/MIPopActivity;->image:Landroid/widget/ImageView;

    .line 143
    iget-object v5, p0, Lcom/android/mipop/MIPopActivity;->image:Landroid/widget/ImageView;

    const/16 v6, 0x8a

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 145
    invoke-direct {p0}, Lcom/android/mipop/MIPopActivity;->updateMipopCheckBoxByDb()V

    .line 146
    iget-object v5, p0, Lcom/android/mipop/MIPopActivity;->mMIPopSwitch:Lcom/zte/mifavor/widget/SwitchZTE;

    new-instance v6, Lcom/android/mipop/MIPopActivity$1;

    invoke-direct {v6, p0}, Lcom/android/mipop/MIPopActivity$1;-><init>(Lcom/android/mipop/MIPopActivity;)V

    invoke-virtual {v5, v6}, Lcom/zte/mifavor/widget/SwitchZTE;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 158
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 213
    const-string v0, "Suhao.Memory"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mipop/MIPopActivity;->mContext:Landroid/content/Context;

    .line 215
    invoke-super {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->onDestroy()V

    .line 216
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 233
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->finish()V

    .line 235
    const/4 v0, 0x1

    .line 237
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/ActivityZTE;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 242
    invoke-super {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->onResume()V

    .line 243
    const-string v3, "onResume()"

    invoke-direct {p0, v3}, Lcom/android/mipop/MIPopActivity;->log(Ljava/lang/String;)V

    .line 244
    iput-object p0, p0, Lcom/android/mipop/MIPopActivity;->mContext:Landroid/content/Context;

    .line 247
    const-string v1, "color_sb"

    .line 248
    .local v1, "ACTIONBAR_BG_COLOR_KEY":Ljava/lang/String;
    const v0, -0x40babd

    .line 249
    .local v0, "ACTIONBAR_BG_COLOR_DEFAULT_VALUE":I
    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 251
    .local v2, "color":I
    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 252
    invoke-virtual {p0}, Lcom/android/mipop/MIPopActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 254
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 186
    invoke-super {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->onStart()V

    .line 187
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 190
    invoke-super {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->onStop()V

    .line 191
    return-void
.end method

.method public setMiPopIsClicked(Z)V
    .locals 0
    .param p1, "clicked"    # Z

    .prologue
    .line 257
    iput-boolean p1, p0, Lcom/android/mipop/MIPopActivity;->isMipopClicked:Z

    .line 258
    return-void
.end method
