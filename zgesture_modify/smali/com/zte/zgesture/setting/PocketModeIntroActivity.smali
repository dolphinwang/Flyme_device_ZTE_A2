.class public Lcom/zte/zgesture/setting/PocketModeIntroActivity;
.super Lcom/zte/mifavor/widget/ActivityZTE;
.source "PocketModeIntroActivity.java"


# instance fields
.field private actionBarView:Lcom/zte/zgesture/ui/ActionBarView;

.field private allSwitch:Landroid/widget/Switch;

.field private imgIntro:Landroid/widget/ImageView;

.field private introBmp:Landroid/graphics/Bitmap;

.field private introText:Landroid/widget/TextView;

.field private mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

.field private mTryBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ActivityZTE;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/zte/zgesture/setting/PocketModeIntroActivity;)Lcom/zte/zgesture/setting/GestureSetting;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/setting/PocketModeIntroActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/zte/zgesture/setting/PocketModeIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    return-object v0
.end method

.method private initSwitch()V
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/zte/zgesture/setting/PocketModeIntroActivity;->allSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/zte/zgesture/setting/PocketModeIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/GestureSetting;->reloadSetting()V

    .line 133
    iget-object v0, p0, Lcom/zte/zgesture/setting/PocketModeIntroActivity;->allSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/zte/zgesture/setting/PocketModeIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v2, "setting_pocket"

    invoke-virtual {v1, v2}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 135
    :cond_0
    return-void
.end method

.method private switchCheck()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/zte/zgesture/setting/PocketModeIntroActivity;->allSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/zte/zgesture/setting/PocketModeIntroActivity;->allSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/zte/zgesture/setting/PocketModeIntroActivity$2;

    invoke-direct {v1, p0}, Lcom/zte/zgesture/setting/PocketModeIntroActivity$2;-><init>(Lcom/zte/zgesture/setting/PocketModeIntroActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 128
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x8

    .line 34
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/ActivityZTE;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v2, 0x7f030055

    invoke-virtual {p0, v2}, Lcom/zte/zgesture/setting/PocketModeIntroActivity;->setContentView(I)V

    .line 36
    sget-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->mifavorWidget:Z

    if-eqz v2, :cond_0

    .line 37
    invoke-static {p0}, Lcom/zte/zgesture/tools/Utils;->getIndicatorColor(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/zte/zgesture/setting/PocketModeIntroActivity;->setIndicatorColor(I)V

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/PocketModeIntroActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/zgesture/setting/GestureSetting;->getGestureSetting(Landroid/content/Context;)Lcom/zte/zgesture/setting/GestureSetting;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/zgesture/setting/PocketModeIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    .line 40
    iget-object v2, p0, Lcom/zte/zgesture/setting/PocketModeIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    invoke-virtual {v2}, Lcom/zte/zgesture/setting/GestureSetting;->reloadSetting()V

    .line 42
    const v2, 0x7f060066

    invoke-virtual {p0, v2}, Lcom/zte/zgesture/setting/PocketModeIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/zte/zgesture/setting/PocketModeIntroActivity;->introText:Landroid/widget/TextView;

    .line 43
    iget-object v2, p0, Lcom/zte/zgesture/setting/PocketModeIntroActivity;->introText:Landroid/widget/TextView;

    const v3, 0x7f09009b

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 44
    const v2, 0x7f060065

    invoke-virtual {p0, v2}, Lcom/zte/zgesture/setting/PocketModeIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/zte/zgesture/setting/PocketModeIntroActivity;->imgIntro:Landroid/widget/ImageView;

    .line 45
    const v2, 0x7f060069

    invoke-virtual {p0, v2}, Lcom/zte/zgesture/setting/PocketModeIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/zte/zgesture/setting/PocketModeIntroActivity;->mTryBtn:Landroid/widget/Button;

    .line 46
    iget-object v2, p0, Lcom/zte/zgesture/setting/PocketModeIntroActivity;->mTryBtn:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 47
    const v2, 0x7f060068

    invoke-virtual {p0, v2}, Lcom/zte/zgesture/setting/PocketModeIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 48
    .local v1, "mChooseAppBtn":Landroid/widget/Button;
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 49
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/PocketModeIntroActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020255

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/zgesture/setting/PocketModeIntroActivity;->introBmp:Landroid/graphics/Bitmap;

    .line 50
    iget-object v2, p0, Lcom/zte/zgesture/setting/PocketModeIntroActivity;->imgIntro:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/zte/zgesture/setting/PocketModeIntroActivity;->introBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 52
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/PocketModeIntroActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 53
    .local v0, "actionBar":Landroid/app/ActionBar;
    new-instance v2, Lcom/zte/zgesture/ui/ActionBarView;

    invoke-virtual {p0}, Lcom/zte/zgesture/setting/PocketModeIntroActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/zte/zgesture/ui/ActionBarView;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    iput-object v2, p0, Lcom/zte/zgesture/setting/PocketModeIntroActivity;->actionBarView:Lcom/zte/zgesture/ui/ActionBarView;

    .line 54
    iget-object v2, p0, Lcom/zte/zgesture/setting/PocketModeIntroActivity;->actionBarView:Lcom/zte/zgesture/ui/ActionBarView;

    invoke-virtual {v2}, Lcom/zte/zgesture/ui/ActionBarView;->initActionBar()V

    .line 55
    iget-object v2, p0, Lcom/zte/zgesture/setting/PocketModeIntroActivity;->actionBarView:Lcom/zte/zgesture/ui/ActionBarView;

    invoke-virtual {v2}, Lcom/zte/zgesture/ui/ActionBarView;->getActionBarTitileView()Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f090064

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 56
    iget-object v2, p0, Lcom/zte/zgesture/setting/PocketModeIntroActivity;->actionBarView:Lcom/zte/zgesture/ui/ActionBarView;

    invoke-virtual {v2}, Lcom/zte/zgesture/ui/ActionBarView;->getActionBarSwitch()Landroid/widget/Switch;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/zgesture/setting/PocketModeIntroActivity;->allSwitch:Landroid/widget/Switch;

    .line 57
    iget-object v2, p0, Lcom/zte/zgesture/setting/PocketModeIntroActivity;->allSwitch:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/zte/zgesture/setting/PocketModeIntroActivity;->mGestureSetting:Lcom/zte/zgesture/setting/GestureSetting;

    const-string v4, "setting_pocket"

    invoke-virtual {v3, v4}, Lcom/zte/zgesture/setting/GestureSetting;->getValue(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 58
    iget-object v2, p0, Lcom/zte/zgesture/setting/PocketModeIntroActivity;->allSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/zte/zgesture/setting/PocketModeIntroActivity$1;

    invoke-direct {v3, p0}, Lcom/zte/zgesture/setting/PocketModeIntroActivity$1;-><init>(Lcom/zte/zgesture/setting/PocketModeIntroActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 88
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/ActivityZTE;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/zte/zgesture/setting/PocketModeIntroActivity;->introBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 103
    invoke-super {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->onDestroy()V

    .line 104
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 139
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 144
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/ActivityZTE;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 141
    :pswitch_0
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/PocketModeIntroActivity;->finish()V

    .line 142
    const/4 v0, 0x1

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->onStart()V

    .line 94
    iget-object v0, p0, Lcom/zte/zgesture/setting/PocketModeIntroActivity;->allSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/zte/zgesture/setting/PocketModeIntroActivity;->initSwitch()V

    .line 97
    :cond_0
    return-void
.end method
