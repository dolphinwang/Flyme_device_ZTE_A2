.class public abstract Lcom/zte/mifavor/preference/PreferenceFragment;
.super Landroid/app/Fragment;
.source "PreferenceFragment.java"

# interfaces
.implements Lcom/zte/mifavor/preference/PreferenceManager$OnPreferenceTreeClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
    }
.end annotation


# static fields
.field private static final FIRST_REQUEST_CODE:I = 0x64

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final PREFERENCES_TAG:Ljava/lang/String; = "preferences"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHavePrefs:Z

.field private mInitDone:Z

.field private mLayoutResId:I

.field private mList:Landroid/widget/ListView;

.field private mListOnKeyListener:Landroid/view/View$OnKeyListener;

.field mOptionMenuColor:I

.field private mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

.field private final mRequestFocus:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mOptionMenuColor:I

    .line 134
    sget v0, Lcom/zte/extres/R$layout;->preference_list_fragment:I

    iput v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mLayoutResId:I

    .line 142
    new-instance v0, Lcom/zte/mifavor/preference/PreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/preference/PreferenceFragment$1;-><init>(Lcom/zte/mifavor/preference/PreferenceFragment;)V

    iput-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    .line 154
    new-instance v0, Lcom/zte/mifavor/preference/PreferenceFragment$2;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/preference/PreferenceFragment$2;-><init>(Lcom/zte/mifavor/preference/PreferenceFragment;)V

    iput-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    .line 439
    new-instance v0, Lcom/zte/mifavor/preference/PreferenceFragment$3;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/preference/PreferenceFragment$3;-><init>(Lcom/zte/mifavor/preference/PreferenceFragment;)V

    iput-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mListOnKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/preference/PreferenceFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/preference/PreferenceFragment;

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;->bindPreferences()V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/mifavor/preference/PreferenceFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/preference/PreferenceFragment;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method private bindPreferences()V
    .locals 2

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;->getPreferenceScreen()Lcom/zte/mifavor/preference/PreferenceScreen;

    move-result-object v0

    .line 373
    .local v0, "preferenceScreen":Lcom/zte/mifavor/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 376
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;->onBindPreferences()V

    .line 377
    return-void
.end method

.method private ensureList()V
    .locals 4

    .prologue
    .line 414
    iget-object v2, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    .line 437
    :goto_0
    return-void

    .line 417
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 418
    .local v1, "root":Landroid/view/View;
    if-nez v1, :cond_1

    .line 419
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Content view not yet created"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 421
    :cond_1
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 422
    .local v0, "rawListView":Landroid/view/View;
    instance-of v2, v0, Landroid/widget/ListView;

    if-nez v2, :cond_2

    .line 423
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 427
    :cond_2
    check-cast v0, Landroid/widget/ListView;

    .end local v0    # "rawListView":Landroid/view/View;
    iput-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    .line 428
    iget-object v2, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    if-nez v2, :cond_3

    .line 429
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 433
    :cond_3
    iget-object v2, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mListOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 434
    iget-object v2, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 435
    iget-object v2, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 436
    iget-object v2, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postBindPreferences()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 366
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    :goto_0
    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private requirePreferenceManager()V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 360
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_0
    return-void
.end method


# virtual methods
.method public addPreferencesFromIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;->requirePreferenceManager()V

    .line 312
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;->getPreferenceScreen()Lcom/zte/mifavor/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/zte/mifavor/preference/PreferenceManager;->inflateFromIntent(Landroid/content/Intent;Lcom/zte/mifavor/preference/PreferenceScreen;)Lcom/zte/mifavor/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/PreferenceFragment;->setPreferenceScreen(Lcom/zte/mifavor/preference/PreferenceScreen;)V

    .line 314
    return-void
.end method

.method public addPreferencesFromResource(I)V
    .locals 3
    .param p1, "preferencesResId"    # I

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;->requirePreferenceManager()V

    .line 326
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;->getPreferenceScreen()Lcom/zte/mifavor/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/zte/mifavor/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILcom/zte/mifavor/preference/PreferenceScreen;)Lcom/zte/mifavor/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/PreferenceFragment;->setPreferenceScreen(Lcom/zte/mifavor/preference/PreferenceScreen;)V

    .line 328
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Lcom/zte/mifavor/preference/Preference;
    .locals 1
    .param p1, "key"    # Ljava/lang/CharSequence;

    .prologue
    .line 352
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 353
    const/4 v0, 0x0

    .line 355
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcom/zte/mifavor/preference/Preference;

    move-result-object v0

    goto :goto_0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 389
    invoke-direct {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;->ensureList()V

    .line 390
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method public getPreferenceManager()Lcom/zte/mifavor/preference/PreferenceManager;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    return-object v0
.end method

.method public getPreferenceScreen()Lcom/zte/mifavor/preference/PreferenceScreen;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/zte/mifavor/preference/PreferenceManager;->getPreferenceScreen()Lcom/zte/mifavor/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public hasListView()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 395
    iget-object v4, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    if-eqz v4, :cond_1

    .line 410
    :cond_0
    :goto_0
    return v2

    .line 398
    :cond_1
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 399
    .local v1, "root":Landroid/view/View;
    if-nez v1, :cond_2

    move v2, v3

    .line 400
    goto :goto_0

    .line 402
    :cond_2
    const v4, 0x102000a

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 403
    .local v0, "rawListView":Landroid/view/View;
    instance-of v4, v0, Landroid/widget/ListView;

    if-nez v4, :cond_3

    move v2, v3

    .line 404
    goto :goto_0

    .line 406
    :cond_3
    check-cast v0, Landroid/widget/ListView;

    .end local v0    # "rawListView":Landroid/view/View;
    iput-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    .line 407
    iget-object v4, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    if-nez v4, :cond_0

    move v2, v3

    .line 408
    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 201
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 203
    iget-boolean v2, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mHavePrefs:Z

    if-eqz v2, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;->bindPreferences()V

    .line 207
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mInitDone:Z

    .line 209
    if-eqz p1, :cond_1

    .line 210
    const-string v2, "preferences"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 211
    .local v0, "container":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 212
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;->getPreferenceScreen()Lcom/zte/mifavor/preference/PreferenceScreen;

    move-result-object v1

    .line 213
    .local v1, "preferenceScreen":Lcom/zte/mifavor/preference/PreferenceScreen;
    if-eqz v1, :cond_1

    .line 214
    invoke-virtual {v1, v0}, Lcom/zte/mifavor/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 218
    .end local v0    # "container":Landroid/os/Bundle;
    .end local v1    # "preferenceScreen":Lcom/zte/mifavor/preference/PreferenceScreen;
    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 261
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 263
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zte/mifavor/preference/PreferenceManager;->dispatchActivityResult(IILandroid/content/Intent;)V

    .line 265
    return-void
.end method

.method protected onBindPreferences()V
    .locals 0

    .prologue
    .line 381
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 178
    new-instance v0, Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/zte/mifavor/preference/PreferenceManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    .line 180
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Lcom/zte/mifavor/preference/PreferenceManager;->setFragment(Lcom/zte/mifavor/preference/PreferenceFragment;)V

    .line 181
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 187
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/zte/extres/R$styleable;->PreferenceFragment:[I

    sget v4, Lcom/zte/extres/R$attr;->preferenceFragmentStyle:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 191
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v1, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mLayoutResId:I

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mLayoutResId:I

    .line 194
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 196
    iget v1, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mLayoutResId:I

    invoke-virtual {p1, v1, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 243
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 244
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/zte/mifavor/preference/PreferenceManager;->dispatchActivityDestroy()V

    .line 245
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    .line 236
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 237
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 238
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 239
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/zte/mifavor/preference/PreferenceScreen;Lcom/zte/mifavor/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Lcom/zte/mifavor/preference/PreferenceScreen;
    .param p2, "preference"    # Lcom/zte/mifavor/preference/Preference;

    .prologue
    .line 335
    invoke-virtual {p2}, Lcom/zte/mifavor/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/zte/mifavor/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    invoke-interface {v0, p0, p2}, Lcom/zte/mifavor/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Lcom/zte/mifavor/preference/PreferenceFragment;Lcom/zte/mifavor/preference/Preference;)Z

    move-result v0

    .line 340
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 458
    move-object v4, p1

    check-cast v4, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    .line 459
    .local v4, "mMmenu":Lcom/zte/mifavor/actionbar/menu/MenuBuilder;
    invoke-virtual {v4}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v3

    .line 460
    .local v3, "mItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;>;"
    if-nez v3, :cond_0

    .line 461
    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 463
    :cond_0
    const/4 v1, 0x0

    .line 466
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "color"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 473
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 474
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    iget v6, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mOptionMenuColor:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 473
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 468
    .end local v2    # "i":I
    :catch_0
    move-exception v0

    .line 470
    .local v0, "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    goto :goto_0

    .line 477
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "i":I
    :catch_1
    move-exception v0

    .line 479
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 481
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 482
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 249
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 251
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;->getPreferenceScreen()Lcom/zte/mifavor/preference/PreferenceScreen;

    move-result-object v1

    .line 252
    .local v1, "preferenceScreen":Lcom/zte/mifavor/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 253
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 254
    .local v0, "container":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/zte/mifavor/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 255
    const-string v2, "preferences"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 257
    .end local v0    # "container":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 222
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 223
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Lcom/zte/mifavor/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Lcom/zte/mifavor/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 224
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 228
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 229
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/zte/mifavor/preference/PreferenceManager;->dispatchActivityStop()V

    .line 230
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Lcom/zte/mifavor/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 231
    return-void
.end method

.method protected onUnbindPreferences()V
    .locals 0

    .prologue
    .line 385
    return-void
.end method

.method public setOptionMenuColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 485
    iput p1, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mOptionMenuColor:I

    .line 486
    return-void
.end method

.method public setPreferenceScreen(Lcom/zte/mifavor/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "preferenceScreen"    # Lcom/zte/mifavor/preference/PreferenceScreen;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/preference/PreferenceManager;->setPreferences(Lcom/zte/mifavor/preference/PreferenceScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;->onUnbindPreferences()V

    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mHavePrefs:Z

    .line 287
    iget-boolean v0, p0, Lcom/zte/mifavor/preference/PreferenceFragment;->mInitDone:Z

    if-eqz v0, :cond_0

    .line 288
    invoke-direct {p0}, Lcom/zte/mifavor/preference/PreferenceFragment;->postBindPreferences()V

    .line 291
    :cond_0
    return-void
.end method
