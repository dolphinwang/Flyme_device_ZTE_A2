.class public Lcom/zte/navikey/NaviKeyActivity;
.super Lcom/zte/navikey/MyActivity;
.source "NaviKeyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "NaviKey"


# instance fields
.field iv1:Landroid/widget/ImageView;

.field iv2:Landroid/widget/ImageView;

.field mContext:Landroid/content/Context;

.field mDefaultKeyset:I

.field radioButton1:Landroid/widget/RadioButton;

.field radioButton2:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/zte/navikey/MyActivity;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/navikey/NaviKeyActivity;->mDefaultKeyset:I

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/navikey/NaviKeyActivity;->mContext:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 174
    :goto_0
    return-void

    .line 152
    :sswitch_0
    const-string v0, "NaviKey"

    const-string v1, "radioButton1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/zte/navikey/NaviKeyActivity;->iv1:Landroid/widget/ImageView;

    const v1, 0x7f0201ea

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 154
    iget-object v0, p0, Lcom/zte/navikey/NaviKeyActivity;->iv2:Landroid/widget/ImageView;

    const v1, 0x7f0201eb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 155
    iget-object v0, p0, Lcom/zte/navikey/NaviKeyActivity;->radioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 156
    iget-object v0, p0, Lcom/zte/navikey/NaviKeyActivity;->radioButton2:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 157
    const-string v0, "persist.sys.exchange"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :sswitch_1
    const-string v0, "NaviKey"

    const-string v1, "radioButton2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/zte/navikey/NaviKeyActivity;->iv1:Landroid/widget/ImageView;

    const v1, 0x7f0201e9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 163
    iget-object v0, p0, Lcom/zte/navikey/NaviKeyActivity;->iv2:Landroid/widget/ImageView;

    const v1, 0x7f0201ec

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 164
    iget-object v0, p0, Lcom/zte/navikey/NaviKeyActivity;->radioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 165
    iget-object v0, p0, Lcom/zte/navikey/NaviKeyActivity;->radioButton2:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 166
    const-string v0, "persist.sys.exchange"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :sswitch_data_0
    .sparse-switch
        0x7f060063 -> :sswitch_0
        0x7f060069 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/zte/navikey/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v1, 0x7f03003c

    invoke-virtual {p0, v1}, Lcom/zte/navikey/NaviKeyActivity;->setContentView(I)V

    .line 36
    iput-object p0, p0, Lcom/zte/navikey/NaviKeyActivity;->mContext:Landroid/content/Context;

    .line 38
    invoke-virtual {p0}, Lcom/zte/navikey/NaviKeyActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 39
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 40
    if-eqz v0, :cond_0

    .line 41
    const/16 v1, 0xd

    .line 43
    const/16 v2, 0xf

    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 48
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 49
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 50
    invoke-virtual {p0}, Lcom/zte/navikey/NaviKeyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 54
    :cond_1
    const v1, 0x7f060061

    invoke-virtual {p0, v1}, Lcom/zte/navikey/NaviKeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/zte/navikey/NaviKeyActivity;->iv1:Landroid/widget/ImageView;

    .line 55
    const v1, 0x7f060067

    invoke-virtual {p0, v1}, Lcom/zte/navikey/NaviKeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/zte/navikey/NaviKeyActivity;->iv2:Landroid/widget/ImageView;

    .line 57
    const v1, 0x7f060063

    invoke-virtual {p0, v1}, Lcom/zte/navikey/NaviKeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/zte/navikey/NaviKeyActivity;->radioButton1:Landroid/widget/RadioButton;

    .line 58
    const v1, 0x7f060069

    invoke-virtual {p0, v1}, Lcom/zte/navikey/NaviKeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/zte/navikey/NaviKeyActivity;->radioButton2:Landroid/widget/RadioButton;

    .line 61
    iget-object v1, p0, Lcom/zte/navikey/NaviKeyActivity;->radioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v1, p0, Lcom/zte/navikey/NaviKeyActivity;->radioButton2:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 133
    invoke-super {p0}, Lcom/zte/navikey/MyActivity;->onDestroy()V

    .line 135
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 138
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 140
    .local v0, "id":I
    const-string v1, "NaviKey"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onOptionsItemSelected() item.id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/zte/navikey/NaviKeyActivity;->finish()V

    .line 143
    const/4 v1, 0x1

    .line 145
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/zte/navikey/MyActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 128
    invoke-super {p0}, Lcom/zte/navikey/MyActivity;->onPause()V

    .line 130
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    invoke-super {p0}, Lcom/zte/navikey/MyActivity;->onResume()V

    .line 70
    const-string v0, "persist.sys.exchange"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zte/navikey/NaviKeyActivity;->mDefaultKeyset:I

    .line 72
    iget v0, p0, Lcom/zte/navikey/NaviKeyActivity;->mDefaultKeyset:I

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/zte/navikey/NaviKeyActivity;->iv1:Landroid/widget/ImageView;

    const v1, 0x7f0201ea

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    iget-object v0, p0, Lcom/zte/navikey/NaviKeyActivity;->iv2:Landroid/widget/ImageView;

    const v1, 0x7f0201eb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    iget-object v0, p0, Lcom/zte/navikey/NaviKeyActivity;->radioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 76
    iget-object v0, p0, Lcom/zte/navikey/NaviKeyActivity;->radioButton2:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 85
    :goto_0
    iget-object v0, p0, Lcom/zte/navikey/NaviKeyActivity;->iv1:Landroid/widget/ImageView;

    new-instance v1, Lcom/zte/navikey/NaviKeyActivity$1;

    invoke-direct {v1, p0}, Lcom/zte/navikey/NaviKeyActivity$1;-><init>(Lcom/zte/navikey/NaviKeyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/zte/navikey/NaviKeyActivity;->iv1:Landroid/widget/ImageView;

    new-instance v1, Lcom/zte/navikey/NaviKeyActivity$2;

    invoke-direct {v1, p0}, Lcom/zte/navikey/NaviKeyActivity$2;-><init>(Lcom/zte/navikey/NaviKeyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/zte/navikey/NaviKeyActivity;->iv2:Landroid/widget/ImageView;

    new-instance v1, Lcom/zte/navikey/NaviKeyActivity$3;

    invoke-direct {v1, p0}, Lcom/zte/navikey/NaviKeyActivity$3;-><init>(Lcom/zte/navikey/NaviKeyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/zte/navikey/NaviKeyActivity;->iv2:Landroid/widget/ImageView;

    new-instance v1, Lcom/zte/navikey/NaviKeyActivity$4;

    invoke-direct {v1, p0}, Lcom/zte/navikey/NaviKeyActivity$4;-><init>(Lcom/zte/navikey/NaviKeyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 125
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/zte/navikey/NaviKeyActivity;->iv1:Landroid/widget/ImageView;

    const v1, 0x7f0201e9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    iget-object v0, p0, Lcom/zte/navikey/NaviKeyActivity;->iv2:Landroid/widget/ImageView;

    const v1, 0x7f0201ec

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    iget-object v0, p0, Lcom/zte/navikey/NaviKeyActivity;->radioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 81
    iget-object v0, p0, Lcom/zte/navikey/NaviKeyActivity;->radioButton2:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method
