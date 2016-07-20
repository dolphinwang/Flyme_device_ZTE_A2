.class public Lcom/android/fmradio/FmRadioFavorite;
.super Landroid/app/Activity;
.source "FmRadioFavorite.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/android/fmradio/dialogs/DeleteStationDialog$DeleteStationListener;
.implements Lcom/android/fmradio/dialogs/RenameStationDialog$RenameStationListener;
.implements Lcom/android/fmradio/dialogs/SwitchFreqDialog$SwitchFreqListener;
.implements Lcom/android/fmradio/dialogs/SearchChannelsDialog$CancelSearchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fmradio/FmRadioFavorite$ChannelListAdapter;,
        Lcom/android/fmradio/FmRadioFavorite$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/android/fmradio/dialogs/DeleteStationDialog$DeleteStationListener;",
        "Lcom/android/fmradio/dialogs/RenameStationDialog$RenameStationListener;",
        "Lcom/android/fmradio/dialogs/SwitchFreqDialog$SwitchFreqListener;",
        "Lcom/android/fmradio/dialogs/SearchChannelsDialog$CancelSearchListener;"
    }
.end annotation


# static fields
.field public static final ACTIVITY_RESULT:Ljava/lang/String; = "ACTIVITY_RESULT"

.field private static final FAVORITE_FREQ:Ljava/lang/String; = "FAVORITE_FREQ"

.field private static final FAVORITE_NAME:Ljava/lang/String; = "FAVORITE_NAME"

.field private static final PERMISSION_REQUEST_CODE_LOCATION:I = 0x64

.field private static final TAG:Ljava/lang/String; = "FmRx/Favorite"


# instance fields
.field private mAdapter:Lcom/android/fmradio/FmRadioFavorite$ChannelListAdapter;

.field private mChannelListListener:Lcom/android/fmradio/FmService$OnChannelListListener;

.field private mContext:Landroid/content/Context;

.field private mDlgStationFreq:I

.field private mDlgStationName:Ljava/lang/String;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mLvFavorites:Landroid/widget/ListView;

.field private mStationTypeBtnOnClick:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 100
    iput-object v1, p0, Lcom/android/fmradio/FmRadioFavorite;->mLvFavorites:Landroid/widget/ListView;

    .line 101
    iput-object v1, p0, Lcom/android/fmradio/FmRadioFavorite;->mAdapter:Lcom/android/fmradio/FmRadioFavorite$ChannelListAdapter;

    .line 102
    iput-object v1, p0, Lcom/android/fmradio/FmRadioFavorite;->mDlgStationName:Ljava/lang/String;

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fmradio/FmRadioFavorite;->mDlgStationFreq:I

    .line 106
    iput-object v1, p0, Lcom/android/fmradio/FmRadioFavorite;->mContext:Landroid/content/Context;

    .line 107
    iput-object v1, p0, Lcom/android/fmradio/FmRadioFavorite;->mChannelListListener:Lcom/android/fmradio/FmService$OnChannelListListener;

    .line 108
    iput-object v1, p0, Lcom/android/fmradio/FmRadioFavorite;->mFragmentManager:Landroid/app/FragmentManager;

    .line 486
    new-instance v0, Lcom/android/fmradio/FmRadioFavorite$1;

    invoke-direct {v0, p0}, Lcom/android/fmradio/FmRadioFavorite$1;-><init>(Lcom/android/fmradio/FmRadioFavorite;)V

    iput-object v0, p0, Lcom/android/fmradio/FmRadioFavorite;->mStationTypeBtnOnClick:Landroid/view/View$OnClickListener;

    .line 85
    return-void
.end method

.method static synthetic access$1(Lcom/android/fmradio/FmRadioFavorite;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 698
    invoke-direct {p0, p1, p2}, Lcom/android/fmradio/FmRadioFavorite;->sendBroadcastToFmService(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/android/fmradio/FmRadioFavorite;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/fmradio/FmRadioFavorite;->mStationTypeBtnOnClick:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/android/fmradio/FmRadioFavorite;)Lcom/android/fmradio/FmRadioFavorite$ChannelListAdapter;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/fmradio/FmRadioFavorite;->mAdapter:Lcom/android/fmradio/FmRadioFavorite$ChannelListAdapter;

    return-object v0
.end method

.method static synthetic access$4(Lcom/android/fmradio/FmRadioFavorite;)Z
    .locals 1

    .prologue
    .line 716
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioFavorite;->dismissNoAntennaDialog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lcom/android/fmradio/FmRadioFavorite;)V
    .locals 0

    .prologue
    .line 604
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioFavorite;->dismissSearchDialog()V

    return-void
.end method

.method private dismissNoAntennaDialog()Z
    .locals 3

    .prologue
    .line 717
    iget-object v1, p0, Lcom/android/fmradio/FmRadioFavorite;->mFragmentManager:Landroid/app/FragmentManager;

    .line 718
    const-string v2, "NoAntenna"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 717
    check-cast v0, Lcom/android/fmradio/dialogs/NoAntennaDialog;

    .line 719
    .local v0, "newFragment":Lcom/android/fmradio/dialogs/NoAntennaDialog;
    if-eqz v0, :cond_0

    .line 720
    invoke-virtual {v0}, Lcom/android/fmradio/dialogs/NoAntennaDialog;->dismissAllowingStateLoss()V

    .line 721
    const/4 v1, 0x1

    .line 723
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private dismissSearchDialog()V
    .locals 3

    .prologue
    .line 605
    iget-object v1, p0, Lcom/android/fmradio/FmRadioFavorite;->mFragmentManager:Landroid/app/FragmentManager;

    .line 606
    const-string v2, "Search"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 605
    check-cast v0, Lcom/android/fmradio/dialogs/SearchChannelsDialog;

    .line 607
    .local v0, "newFragment":Lcom/android/fmradio/dialogs/SearchChannelsDialog;
    if-eqz v0, :cond_0

    .line 608
    invoke-virtual {v0}, Lcom/android/fmradio/dialogs/SearchChannelsDialog;->dismissAllowingStateLoss()V

    .line 610
    :cond_0
    return-void
.end method

.method private sendBroadcastToFmService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;

    .prologue
    .line 699
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 700
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "command"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 701
    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmRadioFavorite;->sendBroadcast(Landroid/content/Intent;)V

    .line 702
    return-void
.end method

.method private showDeleteStationDialog(I)V
    .locals 3
    .param p1, "freq"    # I

    .prologue
    .line 618
    invoke-static {p1}, Lcom/android/fmradio/dialogs/DeleteStationDialog;->newInstance(I)Lcom/android/fmradio/dialogs/DeleteStationDialog;

    move-result-object v0

    .line 619
    .local v0, "newFragment":Lcom/android/fmradio/dialogs/DeleteStationDialog;
    iget-object v1, p0, Lcom/android/fmradio/FmRadioFavorite;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v2, "Delete"

    invoke-virtual {v0, v1, v2}, Lcom/android/fmradio/dialogs/DeleteStationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 620
    iget-object v1, p0, Lcom/android/fmradio/FmRadioFavorite;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 621
    return-void
.end method

.method private showRenameDialog(I)V
    .locals 4
    .param p1, "freq"    # I

    .prologue
    .line 624
    iget-object v2, p0, Lcom/android/fmradio/FmRadioFavorite;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/fmradio/FmStation;->getStationName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 625
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 626
    :cond_0
    int-to-float v2, p1

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    .line 628
    :cond_1
    invoke-static {v0}, Lcom/android/fmradio/dialogs/RenameStationDialog;->newInstance(Ljava/lang/String;)Lcom/android/fmradio/dialogs/RenameStationDialog;

    move-result-object v1

    .line 629
    .local v1, "newFragment":Lcom/android/fmradio/dialogs/RenameStationDialog;
    iget-object v2, p0, Lcom/android/fmradio/FmRadioFavorite;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v3, "Rename"

    invoke-virtual {v1, v2, v3}, Lcom/android/fmradio/dialogs/RenameStationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 630
    iget-object v2, p0, Lcom/android/fmradio/FmRadioFavorite;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 631
    return-void
.end method

.method private showSearchDialog()V
    .locals 3

    .prologue
    .line 599
    invoke-static {}, Lcom/android/fmradio/dialogs/SearchChannelsDialog;->newInstance()Lcom/android/fmradio/dialogs/SearchChannelsDialog;

    move-result-object v0

    .line 600
    .local v0, "newFragment":Lcom/android/fmradio/dialogs/SearchChannelsDialog;
    iget-object v1, p0, Lcom/android/fmradio/FmRadioFavorite;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v2, "Search"

    invoke-virtual {v0, v1, v2}, Lcom/android/fmradio/dialogs/SearchChannelsDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 601
    iget-object v1, p0, Lcom/android/fmradio/FmRadioFavorite;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 602
    return-void
.end method

.method private showSwitchFreqDialog(I)V
    .locals 3
    .param p1, "freq"    # I

    .prologue
    .line 613
    invoke-static {p1}, Lcom/android/fmradio/dialogs/SwitchFreqDialog;->newInstance(I)Lcom/android/fmradio/dialogs/SwitchFreqDialog;

    move-result-object v0

    .line 614
    .local v0, "newFragment":Lcom/android/fmradio/dialogs/SwitchFreqDialog;
    iget-object v1, p0, Lcom/android/fmradio/FmRadioFavorite;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v2, "SwitchFreq"

    invoke-virtual {v0, v1, v2}, Lcom/android/fmradio/dialogs/SwitchFreqDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 615
    return-void
.end method


# virtual methods
.method public cancelSearch()V
    .locals 2

    .prologue
    .line 687
    .line 688
    const-string v0, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_STOPSCAN"

    const-string v1, ""

    .line 687
    invoke-direct {p0, v0, v1}, Lcom/android/fmradio/FmRadioFavorite;->sendBroadcastToFmService(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioFavorite;->dismissSearchDialog()V

    .line 690
    return-void
.end method

.method public deleteStation(I)V
    .locals 1
    .param p1, "freq"    # I

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/fmradio/FmRadioFavorite;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/fmradio/FmStation;->deleteStationInDb(Landroid/content/Context;I)V

    .line 696
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 306
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    check-cast v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v1, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 308
    .local v1, "position":I
    iget-object v4, p0, Lcom/android/fmradio/FmRadioFavorite;->mLvFavorites:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    const/4 v5, 0x0

    .line 309
    iget-object v6, p0, Lcom/android/fmradio/FmRadioFavorite;->mLvFavorites:Landroid/widget/ListView;

    .line 308
    invoke-interface {v4, v1, v5, v6}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 312
    .local v0, "itemView":Landroid/view/View;
    const v4, 0x7f0600d4

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 311
    check-cast v2, Landroid/widget/TextView;

    .line 314
    .local v2, "stationFreqView":Landroid/widget/TextView;
    const v4, 0x7f0600d6

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 313
    check-cast v3, Landroid/widget/TextView;

    .line 316
    .local v3, "stationNameView":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 315
    invoke-static {v4}, Lcom/android/fmradio/FmUtils;->computeStation(F)I

    move-result v4

    iput v4, p0, Lcom/android/fmradio/FmRadioFavorite;->mDlgStationFreq:I

    .line 317
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/fmradio/FmRadioFavorite;->mDlgStationName:Ljava/lang/String;

    .line 319
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 329
    const-string v4, "FmRx/Favorite"

    const-string v5, "invalid menu item"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :goto_0
    const/4 v4, 0x0

    return v4

    .line 321
    :pswitch_0
    iget v4, p0, Lcom/android/fmradio/FmRadioFavorite;->mDlgStationFreq:I

    invoke-direct {p0, v4}, Lcom/android/fmradio/FmRadioFavorite;->showRenameDialog(I)V

    goto :goto_0

    .line 325
    :pswitch_1
    iget v4, p0, Lcom/android/fmradio/FmRadioFavorite;->mDlgStationFreq:I

    invoke-direct {p0, v4}, Lcom/android/fmradio/FmRadioFavorite;->showDeleteStationDialog(I)V

    goto :goto_0

    .line 319
    nop

    :pswitch_data_0
    .packed-switch 0x7f0600e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x3

    .line 118
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    const-string v0, "FmRx/Favorite"

    const-string v1, "begin FmRadioFavorite.onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {p0, v6}, Lcom/android/fmradio/FmRadioFavorite;->setVolumeControlStream(I)V

    .line 122
    const v0, 0x7f030049

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmRadioFavorite;->setContentView(I)V

    .line 124
    invoke-virtual {p0}, Lcom/android/fmradio/FmRadioFavorite;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    .line 125
    .local v7, "actionBar":Landroid/app/ActionBar;
    const v0, 0x7f0900bf

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 126
    invoke-virtual {v7, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 127
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0x75e69f

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/fmradio/FmRadioFavorite;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fmradio/FmRadioFavorite;->mFragmentManager:Landroid/app/FragmentManager;

    .line 130
    invoke-virtual {p0}, Lcom/android/fmradio/FmRadioFavorite;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fmradio/FmRadioFavorite;->mContext:Landroid/content/Context;

    .line 131
    if-eqz p1, :cond_0

    .line 132
    const-string v0, "FAVORITE_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fmradio/FmRadioFavorite;->mDlgStationName:Ljava/lang/String;

    .line 133
    const-string v0, "FAVORITE_FREQ"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/fmradio/FmRadioFavorite;->mDlgStationFreq:I

    .line 136
    :cond_0
    new-instance v0, Lcom/android/fmradio/FmRadioFavorite$ChannelListAdapter;

    const v3, 0x7f030050

    .line 137
    new-array v5, v6, [Ljava/lang/String;

    const-string v1, "is_favorite"

    aput-object v1, v5, v9

    .line 138
    const-string v1, "frequency"

    aput-object v1, v5, v2

    const/4 v1, 0x2

    .line 139
    const-string v2, "station_name"

    aput-object v2, v5, v1

    .line 140
    new-array v6, v6, [I

    fill-array-data v6, :array_0

    move-object v1, p0

    move-object v2, p0

    .line 141
    invoke-direct/range {v0 .. v6}, Lcom/android/fmradio/FmRadioFavorite$ChannelListAdapter;-><init>(Lcom/android/fmradio/FmRadioFavorite;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 136
    iput-object v0, p0, Lcom/android/fmradio/FmRadioFavorite;->mAdapter:Lcom/android/fmradio/FmRadioFavorite$ChannelListAdapter;

    .line 142
    const v0, 0x7f060071

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmRadioFavorite;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/fmradio/FmRadioFavorite;->mLvFavorites:Landroid/widget/ListView;

    .line 143
    const v0, 0x7f060072

    invoke-virtual {p0, v0}, Lcom/android/fmradio/FmRadioFavorite;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 144
    .local v8, "emptyView":Landroid/widget/TextView;
    iget-object v0, p0, Lcom/android/fmradio/FmRadioFavorite;->mLvFavorites:Landroid/widget/ListView;

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 145
    iget-object v0, p0, Lcom/android/fmradio/FmRadioFavorite;->mLvFavorites:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/fmradio/FmRadioFavorite;->mAdapter:Lcom/android/fmradio/FmRadioFavorite$ChannelListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 146
    invoke-virtual {p0}, Lcom/android/fmradio/FmRadioFavorite;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v9, v4, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 148
    iget-object v0, p0, Lcom/android/fmradio/FmRadioFavorite;->mLvFavorites:Landroid/widget/ListView;

    .line 149
    new-instance v1, Lcom/android/fmradio/FmRadioFavorite$2;

    invoke-direct {v1, p0}, Lcom/android/fmradio/FmRadioFavorite$2;-><init>(Lcom/android/fmradio/FmRadioFavorite;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/android/fmradio/FmRadioFavorite;->mLvFavorites:Landroid/widget/ListView;

    .line 195
    new-instance v1, Lcom/android/fmradio/FmRadioFavorite$3;

    invoke-direct {v1, p0}, Lcom/android/fmradio/FmRadioFavorite$3;-><init>(Lcom/android/fmradio/FmRadioFavorite;)V

    .line 184
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 227
    new-instance v0, Lcom/android/fmradio/FmRadioFavorite$4;

    invoke-direct {v0, p0}, Lcom/android/fmradio/FmRadioFavorite$4;-><init>(Lcom/android/fmradio/FmRadioFavorite;)V

    iput-object v0, p0, Lcom/android/fmradio/FmRadioFavorite;->mChannelListListener:Lcom/android/fmradio/FmService$OnChannelListListener;

    .line 291
    iget-object v0, p0, Lcom/android/fmradio/FmRadioFavorite;->mChannelListListener:Lcom/android/fmradio/FmService$OnChannelListListener;

    invoke-static {v0}, Lcom/android/fmradio/FmService;->registerExitListener(Lcom/android/fmradio/FmService$OnChannelListListener;)V

    .line 292
    const-string v0, "FmRx/Favorite"

    const-string v1, "end FmRadioFavorite.onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return-void

    .line 140
    :array_0
    .array-data 4
        0x7f0600d7
        0x7f0600d4
        0x7f0600d6
    .end array-data
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 347
    sget-object v2, Lcom/android/fmradio/FmStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 348
    .local v2, "uri":Landroid/net/Uri;
    const-string v6, "frequency"

    .line 349
    .local v6, "order":Ljava/lang/String;
    new-instance v0, Landroid/content/CursorLoader;

    .line 350
    sget-object v3, Lcom/android/fmradio/FmStation;->COLUMNS:[Ljava/lang/String;

    move-object v1, p0

    move-object v5, v4

    .line 349
    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    .local v0, "cursorLoader":Landroid/content/CursorLoader;
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 536
    const-string v1, "FmRx/Favorite"

    const-string v2, "start onCreateOptionsMenu"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-virtual {p0}, Lcom/android/fmradio/FmRadioFavorite;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 538
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0f0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 539
    const-string v1, "FmRx/Favorite"

    const-string v2, "end onCreateOptionsMenu"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 479
    const-string v0, "FmRx/Favorite"

    const-string v1, "onDestory()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioFavorite;->dismissSearchDialog()V

    .line 481
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioFavorite;->dismissNoAntennaDialog()Z

    .line 482
    iget-object v0, p0, Lcom/android/fmradio/FmRadioFavorite;->mChannelListListener:Lcom/android/fmradio/FmService$OnChannelListListener;

    invoke-static {v0}, Lcom/android/fmradio/FmService;->unregisterExitListener(Lcom/android/fmradio/FmService$OnChannelListListener;)V

    .line 483
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 484
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 365
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/android/fmradio/FmRadioFavorite;->mAdapter:Lcom/android/fmradio/FmRadioFavorite$ChannelListAdapter;

    invoke-virtual {v0, p2}, Lcom/android/fmradio/FmRadioFavorite$ChannelListAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 366
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/content/Loader;

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/fmradio/FmRadioFavorite;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 376
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/android/fmradio/FmRadioFavorite;->mAdapter:Lcom/android/fmradio/FmRadioFavorite$ChannelListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/fmradio/FmRadioFavorite$ChannelListAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 377
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 566
    const-string v2, "FmRx/Favorite"

    const-string v3, "start onOptionsItemSelected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 588
    const-string v2, "FmRx/Favorite"

    const-string v3, "Error: Invalid options menu item."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :goto_0
    const-string v2, "FmRx/Favorite"

    const-string v3, "end onOptionsItemSelected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 569
    :sswitch_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 573
    :sswitch_1
    iget-object v2, p0, Lcom/android/fmradio/FmRadioFavorite;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/fmradio/FmStation;->getCurrentStation(Landroid/content/Context;)I

    move-result v0

    .line 574
    .local v0, "currentStationFreq":I
    invoke-direct {p0, v0}, Lcom/android/fmradio/FmRadioFavorite;->showSwitchFreqDialog(I)V

    goto :goto_0

    .line 579
    .end local v0    # "currentStationFreq":I
    :sswitch_2
    invoke-direct {p0}, Lcom/android/fmradio/FmRadioFavorite;->showSearchDialog()V

    .line 581
    iget-object v2, p0, Lcom/android/fmradio/FmRadioFavorite;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/fmradio/FmStation;->getCurrentStation(Landroid/content/Context;)I

    move-result v1

    .line 583
    .local v1, "freq":I
    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_STARTSCAN"

    .line 584
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 582
    invoke-direct {p0, v2, v3}, Lcom/android/fmradio/FmRadioFavorite;->sendBroadcastToFmService(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 567
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0600de -> :sswitch_1
        0x7f0600df -> :sswitch_2
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 553
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 472
    const-string v0, "FAVORITE_NAME"

    iget-object v1, p0, Lcom/android/fmradio/FmRadioFavorite;->mDlgStationName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const-string v0, "FAVORITE_FREQ"

    iget v1, p0, Lcom/android/fmradio/FmRadioFavorite;->mDlgStationFreq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 474
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 475
    return-void
.end method

.method public renameStationDone()V
    .locals 6

    .prologue
    .line 635
    invoke-virtual {p0}, Lcom/android/fmradio/FmRadioFavorite;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    .line 636
    const-string v5, "Rename"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 635
    check-cast v1, Lcom/android/fmradio/dialogs/RenameStationDialog;

    .line 637
    .local v1, "dialogFragment":Lcom/android/fmradio/dialogs/RenameStationDialog;
    if-nez v1, :cond_1

    .line 660
    :cond_0
    :goto_0
    return-void

    .line 641
    :cond_1
    invoke-virtual {v1}, Lcom/android/fmradio/dialogs/RenameStationDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 642
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 646
    const v4, 0x7f06005d

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 647
    .local v2, "editText":Landroid/widget/EditText;
    if-eqz v2, :cond_0

    .line 651
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 654
    .local v3, "newName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ltz v4, :cond_0

    .line 659
    iget-object v4, p0, Lcom/android/fmradio/FmRadioFavorite;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/fmradio/FmRadioFavorite;->mDlgStationFreq:I

    invoke-static {v4, v5, v3}, Lcom/android/fmradio/FmStation;->updateStationToDb(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public showNoAntennaDialog()V
    .locals 3

    .prologue
    .line 708
    invoke-static {}, Lcom/android/fmradio/dialogs/NoAntennaDialog;->newInstance()Lcom/android/fmradio/dialogs/NoAntennaDialog;

    move-result-object v0

    .line 709
    .local v0, "newFragment":Lcom/android/fmradio/dialogs/NoAntennaDialog;
    iget-object v1, p0, Lcom/android/fmradio/FmRadioFavorite;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v2, "NoAntenna"

    invoke-virtual {v0, v1, v2}, Lcom/android/fmradio/dialogs/NoAntennaDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 710
    iget-object v1, p0, Lcom/android/fmradio/FmRadioFavorite;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 711
    return-void
.end method

.method public switchFreqDone(I)V
    .locals 5
    .param p1, "frequency"    # I

    .prologue
    const/4 v4, 0x0

    .line 664
    const-string v1, "FmRx/Favorite"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "switchFreqDone.frequency="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    move v0, p1

    .line 666
    .local v0, "newStation":I
    invoke-static {v0}, Lcom/android/fmradio/FmUtils;->isValidStation(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 670
    iget-object v1, p0, Lcom/android/fmradio/FmRadioFavorite;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/fmradio/FmStation;->isStationExist(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 671
    invoke-virtual {p0}, Lcom/android/fmradio/FmRadioFavorite;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 672
    const v2, 0x7f0900b4

    .line 671
    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 672
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 676
    :goto_0
    iget-object v1, p0, Lcom/android/fmradio/FmRadioFavorite;->mAdapter:Lcom/android/fmradio/FmRadioFavorite$ChannelListAdapter;

    invoke-virtual {v1}, Lcom/android/fmradio/FmRadioFavorite$ChannelListAdapter;->notifyDataSetChanged()V

    .line 682
    :goto_1
    return-void

    .line 674
    :cond_0
    iget-object v1, p0, Lcom/android/fmradio/FmRadioFavorite;->mContext:Landroid/content/Context;

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/android/fmradio/FmStation;->insertStationToDb(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 678
    :cond_1
    invoke-virtual {p0}, Lcom/android/fmradio/FmRadioFavorite;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 679
    const v2, 0x7f0900c5

    .line 678
    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 680
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
