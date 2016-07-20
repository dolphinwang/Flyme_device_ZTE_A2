.class public Lcom/zte/zgesture/setting/AppSelectActivity;
.super Lcom/zte/mifavor/widget/ActivityZTE;
.source "AppSelectActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/zgesture/setting/AppSelectActivity$1;,
        Lcom/zte/zgesture/setting/AppSelectActivity$AppAdapter;,
        Lcom/zte/zgesture/setting/AppSelectActivity$AppItem;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/zte/zgesture/setting/AppSelectActivity$AppAdapter;

.field private mAllApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/zgesture/setting/AppSelectActivity$AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAppList:Landroid/widget/ListView;

.field private mFilteredApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/zgesture/setting/AppSelectActivity$AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchView:Landroid/widget/SearchView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ActivityZTE;-><init>()V

    .line 146
    return-void
.end method

.method static synthetic access$200(Lcom/zte/zgesture/setting/AppSelectActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/setting/AppSelectActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/zte/zgesture/setting/AppSelectActivity;->mFilteredApps:Ljava/util/ArrayList;

    return-object v0
.end method

.method private filterApps(Ljava/lang/String;)V
    .locals 5
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 118
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/zte/zgesture/setting/AppSelectActivity;->mFilteredApps:Ljava/util/ArrayList;

    .line 119
    iget-object v4, p0, Lcom/zte/zgesture/setting/AppSelectActivity;->mAllApps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/zgesture/setting/AppSelectActivity$AppItem;

    .line 120
    .local v3, "item":Lcom/zte/zgesture/setting/AppSelectActivity$AppItem;
    iget-object v4, v3, Lcom/zte/zgesture/setting/AppSelectActivity$AppItem;->appName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "appLower":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "inputLower":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 123
    iget-object v4, p0, Lcom/zte/zgesture/setting/AppSelectActivity;->mFilteredApps:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 126
    .end local v0    # "appLower":Ljava/lang/String;
    .end local v2    # "inputLower":Ljava/lang/String;
    .end local v3    # "item":Lcom/zte/zgesture/setting/AppSelectActivity$AppItem;
    :cond_1
    return-void
.end method

.method private getAllApps()V
    .locals 11

    .prologue
    const v8, 0x7f090059

    const/4 v10, 0x0

    .line 88
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/zte/zgesture/setting/AppSelectActivity;->mAllApps:Ljava/util/ArrayList;

    .line 89
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/AppSelectActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 90
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v4, v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 91
    .local v4, "mainIntent":Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    sget-boolean v6, Lcom/zte/zgesture/tools/FeatureConfig;->voiceAssistantOptionEnable:Z

    if-eqz v6, :cond_0

    .line 93
    new-instance v3, Lcom/zte/zgesture/setting/AppSelectActivity$AppItem;

    invoke-direct {v3, v10}, Lcom/zte/zgesture/setting/AppSelectActivity$AppItem;-><init>(Lcom/zte/zgesture/setting/AppSelectActivity$1;)V

    .line 94
    .local v3, "item":Lcom/zte/zgesture/setting/AppSelectActivity$AppItem;
    invoke-virtual {p0, v8}, Lcom/zte/zgesture/setting/AppSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/zte/zgesture/setting/AppSelectActivity$AppItem;->appName:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/AppSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020266

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v3, Lcom/zte/zgesture/setting/AppSelectActivity$AppItem;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 96
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.wakeup.ztevoice.command"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v6, v3, Lcom/zte/zgesture/setting/AppSelectActivity$AppItem;->launchIntent:Landroid/content/Intent;

    .line 97
    iget-object v6, v3, Lcom/zte/zgesture/setting/AppSelectActivity$AppItem;->launchIntent:Landroid/content/Intent;

    const-string v7, "title"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    iget-object v6, v3, Lcom/zte/zgesture/setting/AppSelectActivity$AppItem;->launchIntent:Landroid/content/Intent;

    const-string v7, "type"

    const-string v8, "gesture"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    iget-object v6, v3, Lcom/zte/zgesture/setting/AppSelectActivity$AppItem;->launchIntent:Landroid/content/Intent;

    const-string v7, "Appname"

    const-string v8, "voiceassistance"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    iget-object v6, p0, Lcom/zte/zgesture/setting/AppSelectActivity;->mAllApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .end local v3    # "item":Lcom/zte/zgesture/setting/AppSelectActivity$AppItem;
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 103
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 104
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 105
    .local v0, "app":Landroid/content/pm/ResolveInfo;
    new-instance v3, Lcom/zte/zgesture/setting/AppSelectActivity$AppItem;

    invoke-direct {v3, v10}, Lcom/zte/zgesture/setting/AppSelectActivity$AppItem;-><init>(Lcom/zte/zgesture/setting/AppSelectActivity$1;)V

    .line 106
    .restart local v3    # "item":Lcom/zte/zgesture/setting/AppSelectActivity$AppItem;
    invoke-virtual {v0, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/zte/zgesture/setting/AppSelectActivity$AppItem;->appName:Ljava/lang/String;

    .line 107
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v6, v3, Lcom/zte/zgesture/setting/AppSelectActivity$AppItem;->pkgName:Ljava/lang/String;

    .line 108
    invoke-virtual {v0, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v3, Lcom/zte/zgesture/setting/AppSelectActivity$AppItem;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 109
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v6, v3, Lcom/zte/zgesture/setting/AppSelectActivity$AppItem;->launchIntent:Landroid/content/Intent;

    .line 110
    iget-object v6, v3, Lcom/zte/zgesture/setting/AppSelectActivity$AppItem;->launchIntent:Landroid/content/Intent;

    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    iget-object v6, v3, Lcom/zte/zgesture/setting/AppSelectActivity$AppItem;->launchIntent:Landroid/content/Intent;

    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v3, Lcom/zte/zgesture/setting/AppSelectActivity$AppItem;->pkgName:Ljava/lang/String;

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 112
    iget-object v6, p0, Lcom/zte/zgesture/setting/AppSelectActivity;->mAllApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    .end local v0    # "app":Landroid/content/pm/ResolveInfo;
    .end local v3    # "item":Lcom/zte/zgesture/setting/AppSelectActivity$AppItem;
    :cond_1
    iget-object v6, p0, Lcom/zte/zgesture/setting/AppSelectActivity;->mAllApps:Ljava/util/ArrayList;

    iput-object v6, p0, Lcom/zte/zgesture/setting/AppSelectActivity;->mFilteredApps:Ljava/util/ArrayList;

    .line 115
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 58
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/ActivityZTE;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f03004c

    invoke-virtual {p0, v0}, Lcom/zte/zgesture/setting/AppSelectActivity;->setContentView(I)V

    .line 60
    sget-boolean v0, Lcom/zte/zgesture/tools/FeatureConfig;->mifavorWidget:Z

    if-eqz v0, :cond_0

    .line 61
    invoke-static {p0}, Lcom/zte/zgesture/tools/Utils;->getIndicatorColor(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zte/zgesture/setting/AppSelectActivity;->setIndicatorColor(I)V

    .line 64
    :cond_0
    invoke-virtual {p0, v2}, Lcom/zte/zgesture/setting/AppSelectActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    new-instance v0, Landroid/widget/SearchView;

    invoke-direct {v0, p0}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/zgesture/setting/AppSelectActivity;->mSearchView:Landroid/widget/SearchView;

    .line 67
    iget-object v0, p0, Lcom/zte/zgesture/setting/AppSelectActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 69
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/AppSelectActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 70
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/AppSelectActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 71
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/AppSelectActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 72
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/AppSelectActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zgesture/setting/AppSelectActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 74
    invoke-direct {p0}, Lcom/zte/zgesture/setting/AppSelectActivity;->getAllApps()V

    .line 76
    const v0, 0x7f060060

    invoke-virtual {p0, v0}, Lcom/zte/zgesture/setting/AppSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zte/zgesture/setting/AppSelectActivity;->mAppList:Landroid/widget/ListView;

    .line 77
    new-instance v0, Lcom/zte/zgesture/setting/AppSelectActivity$AppAdapter;

    invoke-direct {v0, p0, v2}, Lcom/zte/zgesture/setting/AppSelectActivity$AppAdapter;-><init>(Lcom/zte/zgesture/setting/AppSelectActivity;Lcom/zte/zgesture/setting/AppSelectActivity$1;)V

    iput-object v0, p0, Lcom/zte/zgesture/setting/AppSelectActivity;->mAdapter:Lcom/zte/zgesture/setting/AppSelectActivity$AppAdapter;

    .line 78
    iget-object v0, p0, Lcom/zte/zgesture/setting/AppSelectActivity;->mAppList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zte/zgesture/setting/AppSelectActivity;->mAdapter:Lcom/zte/zgesture/setting/AppSelectActivity$AppAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    iget-object v0, p0, Lcom/zte/zgesture/setting/AppSelectActivity;->mAppList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 80
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->onDestroy()V

    .line 85
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/zte/zgesture/setting/AppSelectActivity;->mFilteredApps:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zgesture/setting/AppSelectActivity$AppItem;

    .line 192
    .local v0, "item":Lcom/zte/zgesture/setting/AppSelectActivity$AppItem;
    if-eqz v0, :cond_0

    .line 193
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 194
    .local v1, "result":Landroid/content/Intent;
    const-string v2, "app_intent"

    iget-object v3, v0, Lcom/zte/zgesture/setting/AppSelectActivity$AppItem;->launchIntent:Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/zte/zgesture/setting/AppSelectActivity;->setResult(ILandroid/content/Intent;)V

    .line 196
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/AppSelectActivity;->finish()V

    .line 198
    .end local v1    # "result":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 34
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 39
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/ActivityZTE;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 36
    :pswitch_0
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/AppSelectActivity;->finish()V

    .line 37
    const/4 v0, 0x1

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQueryTextChange text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zgesture/tools/GLog;->error(Ljava/lang/String;)I

    .line 137
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/zte/zgesture/setting/AppSelectActivity;->mAllApps:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/zte/zgesture/setting/AppSelectActivity;->mFilteredApps:Ljava/util/ArrayList;

    .line 142
    :goto_0
    iget-object v0, p0, Lcom/zte/zgesture/setting/AppSelectActivity;->mAdapter:Lcom/zte/zgesture/setting/AppSelectActivity$AppAdapter;

    invoke-virtual {v0}, Lcom/zte/zgesture/setting/AppSelectActivity$AppAdapter;->notifyDataSetChanged()V

    .line 143
    const/4 v0, 0x0

    return v0

    .line 140
    :cond_1
    invoke-direct {p0, p1}, Lcom/zte/zgesture/setting/AppSelectActivity;->filterApps(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQueryTextSubmit text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zgesture/tools/GLog;->error(Ljava/lang/String;)I

    .line 131
    const/4 v0, 0x0

    return v0
.end method
