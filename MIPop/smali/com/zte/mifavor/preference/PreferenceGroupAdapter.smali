.class public Lcom/zte/mifavor/preference/PreferenceGroupAdapter;
.super Landroid/widget/BaseAdapter;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeInternalListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/preference/PreferenceGroupAdapter$PreferenceLayout;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferenceGroupAdapter"

.field private static sWrapperLayoutParams:Landroid/view/ViewGroup$LayoutParams;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHasReturnedViewTypeCount:Z

.field private mHighlightedDrawable:Landroid/graphics/drawable/Drawable;

.field private mHighlightedPosition:I

.field private volatile mIsSyncing:Z

.field private mPreferenceGroup:Lcom/zte/mifavor/preference/PreferenceGroup;

.field private mPreferenceLayouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/mifavor/preference/PreferenceGroupAdapter$PreferenceLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/mifavor/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncRunnable:Ljava/lang/Runnable;

.field private mTempPreferenceLayout:Lcom/zte/mifavor/preference/PreferenceGroupAdapter$PreferenceLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 101
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->sWrapperLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method

.method public constructor <init>(Lcom/zte/mifavor/preference/PreferenceGroup;)V
    .locals 3
    .param p1, "preferenceGroup"    # Lcom/zte/mifavor/preference/PreferenceGroup;

    .prologue
    const/4 v2, 0x0

    .line 127
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 81
    new-instance v0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter$PreferenceLayout;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zte/mifavor/preference/PreferenceGroupAdapter$PreferenceLayout;-><init>(Lcom/zte/mifavor/preference/PreferenceGroupAdapter$1;)V

    iput-object v0, p0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Lcom/zte/mifavor/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 86
    iput-boolean v2, p0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    .line 88
    iput-boolean v2, p0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->mIsSyncing:Z

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    .line 92
    new-instance v0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter$1;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/preference/PreferenceGroupAdapter$1;-><init>(Lcom/zte/mifavor/preference/PreferenceGroupAdapter;)V

    iput-object v0, p0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->mHighlightedPosition:I

    .line 128
    iput-object p1, p0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->mPreferenceGroup:Lcom/zte/mifavor/preference/PreferenceGroup;

    .line 130
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->mPreferenceGroup:Lcom/zte/mifavor/preference/PreferenceGroup;

    invoke-virtual {v0, p0}, Lcom/zte/mifavor/preference/PreferenceGroup;->setOnPreferenceChangeInternalListener(Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeInternalListener;)V

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    .line 135
    invoke-direct {p0}, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->syncMyPreferences()V

    .line 136
    return-void
.end method

.method static synthetic access$100(Lcom/zte/mifavor/preference/PreferenceGroupAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/preference/PreferenceGroupAdapter;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->syncMyPreferences()V

    return-void
.end method

.method private addPreferenceClassName(Lcom/zte/mifavor/preference/Preference;)V
    .locals 3
    .param p1, "preference"    # Lcom/zte/mifavor/preference/Preference;

    .prologue
    .line 206
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->createPreferenceLayout(Lcom/zte/mifavor/preference/Preference;Lcom/zte/mifavor/preference/PreferenceGroupAdapter$PreferenceLayout;)Lcom/zte/mifavor/preference/PreferenceGroupAdapter$PreferenceLayout;

    move-result-object v1

    .line 207
    .local v1, "pl":Lcom/zte/mifavor/preference/PreferenceGroupAdapter$PreferenceLayout;
    iget-object v2, p0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 210
    .local v0, "insertPos":I
    if-gez v0, :cond_0

    .line 212
    mul-int/lit8 v2, v0, -0x1

    add-int/lit8 v0, v2, -0x1

    .line 213
    iget-object v2, p0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 215
    :cond_0
    return-void
.end method

.method private createPreferenceLayout(Lcom/zte/mifavor/preference/Preference;Lcom/zte/mifavor/preference/PreferenceGroupAdapter$PreferenceLayout;)Lcom/zte/mifavor/preference/PreferenceGroupAdapter$PreferenceLayout;
    .locals 2
    .param p1, "preference"    # Lcom/zte/mifavor/preference/Preference;
    .param p2, "in"    # Lcom/zte/mifavor/preference/PreferenceGroupAdapter$PreferenceLayout;

    .prologue
    .line 198
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 199
    .local v0, "pl":Lcom/zte/mifavor/preference/PreferenceGroupAdapter$PreferenceLayout;
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/zte/mifavor/preference/PreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/zte/mifavor/preference/PreferenceGroupAdapter$PreferenceLayout;->access$202(Lcom/zte/mifavor/preference/PreferenceGroupAdapter$PreferenceLayout;Ljava/lang/String;)Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Lcom/zte/mifavor/preference/Preference;->getLayoutResource()I

    move-result v1

    # setter for: Lcom/zte/mifavor/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I
    invoke-static {v0, v1}, Lcom/zte/mifavor/preference/PreferenceGroupAdapter$PreferenceLayout;->access$302(Lcom/zte/mifavor/preference/PreferenceGroupAdapter$PreferenceLayout;I)I

    .line 201
    invoke-virtual {p1}, Lcom/zte/mifavor/preference/Preference;->getWidgetLayoutResource()I

    move-result v1

    # setter for: Lcom/zte/mifavor/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I
    invoke-static {v0, v1}, Lcom/zte/mifavor/preference/PreferenceGroupAdapter$PreferenceLayout;->access$402(Lcom/zte/mifavor/preference/PreferenceGroupAdapter$PreferenceLayout;I)I

    .line 202
    return-object v0

    .line 198
    .end local v0    # "pl":Lcom/zte/mifavor/preference/PreferenceGroupAdapter$PreferenceLayout;
    :cond_0
    new-instance v0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter$PreferenceLayout;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zte/mifavor/preference/PreferenceGroupAdapter$PreferenceLayout;-><init>(Lcom/zte/mifavor/preference/PreferenceGroupAdapter$1;)V

    goto :goto_0
.end method

.method private flattenPreferenceGroup(Ljava/util/List;Lcom/zte/mifavor/preference/PreferenceGroup;)V
    .locals 7
    .param p2, "group"    # Lcom/zte/mifavor/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/mifavor/preference/Preference;",
            ">;",
            "Lcom/zte/mifavor/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "preferences":Ljava/util/List;, "Ljava/util/List<Lcom/zte/mifavor/preference/Preference;>;"
    const/4 v6, 0x1

    .line 161
    invoke-virtual {p2}, Lcom/zte/mifavor/preference/PreferenceGroup;->sortPreferences()V

    .line 163
    invoke-virtual {p2}, Lcom/zte/mifavor/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 164
    .local v0, "groupSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 165
    invoke-virtual {p2, v1}, Lcom/zte/mifavor/preference/PreferenceGroup;->getPreference(I)Lcom/zte/mifavor/preference/Preference;

    move-result-object v2

    .line 166
    .local v2, "preference":Lcom/zte/mifavor/preference/Preference;
    add-int/lit8 v5, v0, -0x1

    if-ge v1, v5, :cond_3

    .line 167
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p2, v5}, Lcom/zte/mifavor/preference/PreferenceGroup;->getPreference(I)Lcom/zte/mifavor/preference/Preference;

    move-result-object v4

    .line 168
    .local v4, "preferenceNext":Lcom/zte/mifavor/preference/Preference;
    instance-of v5, v4, Lcom/zte/mifavor/preference/PreferenceCategory;

    if-eqz v5, :cond_0

    .line 169
    iput v6, v2, Lcom/zte/mifavor/preference/Preference;->isLastPreference:I

    .line 175
    .end local v4    # "preferenceNext":Lcom/zte/mifavor/preference/Preference;
    :cond_0
    :goto_1
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    iget-boolean v5, p0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    if-nez v5, :cond_1

    invoke-virtual {v2}, Lcom/zte/mifavor/preference/Preference;->canRecycleLayout()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 178
    invoke-direct {p0, v2}, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->addPreferenceClassName(Lcom/zte/mifavor/preference/Preference;)V

    .line 181
    :cond_1
    instance-of v5, v2, Lcom/zte/mifavor/preference/PreferenceGroup;

    if-eqz v5, :cond_2

    move-object v3, v2

    .line 182
    check-cast v3, Lcom/zte/mifavor/preference/PreferenceGroup;

    .line 183
    .local v3, "preferenceAsGroup":Lcom/zte/mifavor/preference/PreferenceGroup;
    invoke-virtual {v3}, Lcom/zte/mifavor/preference/PreferenceGroup;->isOnSameScreenAsChildren()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 184
    invoke-direct {p0, p1, v3}, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Lcom/zte/mifavor/preference/PreferenceGroup;)V

    .line 188
    .end local v3    # "preferenceAsGroup":Lcom/zte/mifavor/preference/PreferenceGroup;
    :cond_2
    invoke-virtual {v2, p0}, Lcom/zte/mifavor/preference/Preference;->setOnPreferenceChangeInternalListener(Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeInternalListener;)V

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    :cond_3
    iput v6, v2, Lcom/zte/mifavor/preference/Preference;->isLastPreference:I

    goto :goto_1

    .line 190
    .end local v2    # "preference":Lcom/zte/mifavor/preference/Preference;
    :cond_4
    return-void
.end method

.method private getHighlightItemViewType()I
    .locals 1

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private syncMyPreferences()V
    .locals 2

    .prologue
    .line 139
    monitor-enter p0

    .line 140
    :try_start_0
    iget-boolean v1, p0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->mIsSyncing:Z

    if-eqz v1, :cond_0

    .line 141
    monitor-exit p0

    .line 157
    :goto_0
    return-void

    .line 144
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->mIsSyncing:Z

    .line 145
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 148
    .local v0, "newPreferenceList":Ljava/util/List;, "Ljava/util/List<Lcom/zte/mifavor/preference/Preference;>;"
    iget-object v1, p0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->mPreferenceGroup:Lcom/zte/mifavor/preference/PreferenceGroup;

    invoke-direct {p0, v0, v1}, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Lcom/zte/mifavor/preference/PreferenceGroup;)V

    .line 149
    iput-object v0, p0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    .line 151
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->notifyDataSetChanged()V

    .line 153
    monitor-enter p0

    .line 154
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->mIsSyncing:Z

    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 156
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 145
    .end local v0    # "newPreferenceList":Ljava/util/List;, "Ljava/util/List<Lcom/zte/mifavor/preference/Preference;>;"
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/zte/mifavor/preference/Preference;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 222
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 223
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/preference/Preference;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->getItem(I)Lcom/zte/mifavor/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 227
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    .line 228
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->getItem(I)Lcom/zte/mifavor/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/mifavor/preference/Preference;->getId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v2, -0x1

    .line 300
    iget v3, p0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->mHighlightedPosition:I

    if-ne p1, v3, :cond_1

    .line 301
    invoke-direct {p0}, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->getHighlightItemViewType()I

    move-result v1

    .line 321
    :cond_0
    :goto_0
    return v1

    .line 304
    :cond_1
    iget-boolean v3, p0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    if-nez v3, :cond_2

    .line 305
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    .line 308
    :cond_2
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->getItem(I)Lcom/zte/mifavor/preference/Preference;

    move-result-object v0

    .line 309
    .local v0, "preference":Lcom/zte/mifavor/preference/Preference;
    invoke-virtual {v0}, Lcom/zte/mifavor/preference/Preference;->canRecycleLayout()Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    .line 310
    goto :goto_0

    .line 313
    :cond_3
    iget-object v3, p0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Lcom/zte/mifavor/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {p0, v0, v3}, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->createPreferenceLayout(Lcom/zte/mifavor/preference/Preference;Lcom/zte/mifavor/preference/PreferenceGroupAdapter$PreferenceLayout;)Lcom/zte/mifavor/preference/PreferenceGroupAdapter$PreferenceLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Lcom/zte/mifavor/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 315
    iget-object v3, p0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Lcom/zte/mifavor/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-static {v3, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    .line 316
    .local v1, "viewType":I
    if-gez v1, :cond_0

    move v1, v2

    .line 319
    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 246
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->getItem(I)Lcom/zte/mifavor/preference/Preference;

    move-result-object v0

    .line 248
    .local v0, "preference":Lcom/zte/mifavor/preference/Preference;
    iget-object v3, p0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Lcom/zte/mifavor/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {p0, v0, v3}, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->createPreferenceLayout(Lcom/zte/mifavor/preference/Preference;Lcom/zte/mifavor/preference/PreferenceGroupAdapter$PreferenceLayout;)Lcom/zte/mifavor/preference/PreferenceGroupAdapter$PreferenceLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Lcom/zte/mifavor/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 252
    iget-object v3, p0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Lcom/zte/mifavor/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-static {v3, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->getItemViewType(I)I

    move-result v3

    invoke-direct {p0}, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->getHighlightItemViewType()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 254
    :cond_0
    const/4 p2, 0x0

    .line 256
    :cond_1
    invoke-virtual {v0, p2, p3}, Lcom/zte/mifavor/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 257
    .local v1, "result":Landroid/view/View;
    iget v3, p0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->mHighlightedPosition:I

    if-ne p1, v3, :cond_2

    iget-object v3, p0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->mHighlightedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 258
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 259
    .local v2, "wrapper":Landroid/view/ViewGroup;
    sget-object v3, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->sWrapperLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    iget-object v3, p0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->mHighlightedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 261
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 262
    move-object v1, v2

    .line 264
    .end local v2    # "wrapper":Landroid/view/ViewGroup;
    :cond_2
    return-object v1
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 327
    iget-boolean v0, p0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    if-nez v0, :cond_0

    .line 328
    iput-boolean v1, p0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 269
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 270
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->getItem(I)Lcom/zte/mifavor/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/mifavor/preference/Preference;->isSelectable()Z

    move-result v0

    goto :goto_0
.end method

.method public onPreferenceChange(Lcom/zte/mifavor/preference/Preference;)V
    .locals 0
    .param p1, "preference"    # Lcom/zte/mifavor/preference/Preference;

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->notifyDataSetChanged()V

    .line 282
    return-void
.end method

.method public onPreferenceHierarchyChange(Lcom/zte/mifavor/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Lcom/zte/mifavor/preference/Preference;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 286
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 287
    return-void
.end method

.method public setHighlighted(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 235
    iput p1, p0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->mHighlightedPosition:I

    .line 236
    return-void
.end method

.method public setHighlightedDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;->mHighlightedDrawable:Landroid/graphics/drawable/Drawable;

    .line 243
    return-void
.end method
