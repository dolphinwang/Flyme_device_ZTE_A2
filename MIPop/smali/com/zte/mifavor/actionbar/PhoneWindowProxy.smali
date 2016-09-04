.class public Lcom/zte/mifavor/actionbar/PhoneWindowProxy;
.super Lcom/android/internal/policy/PhoneWindow;
.source "PhoneWindowProxy.java"


# instance fields
.field mAC:Lcom/zte/mifavor/actionbar/ActivityCommon;

.field mActivity:Landroid/app/Activity;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zte/mifavor/actionbar/ActivityCommon;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ac"    # Lcom/zte/mifavor/actionbar/ActivityCommon;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/PhoneWindowProxy;->mContext:Landroid/content/Context;

    .line 26
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/PhoneWindowProxy;->mActivity:Landroid/app/Activity;

    .line 27
    iput-object p2, p0, Lcom/zte/mifavor/actionbar/PhoneWindowProxy;->mAC:Lcom/zte/mifavor/actionbar/ActivityCommon;

    .line 30
    return-void
.end method


# virtual methods
.method protected setNeedsMenuKey(I)V
    .locals 9
    .param p1, "value"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 33
    iget-object v8, p0, Lcom/zte/mifavor/actionbar/PhoneWindowProxy;->mAC:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-virtual {v8}, Lcom/zte/mifavor/actionbar/ActivityCommon;->isOriginAcitivityHasNoTitle()V

    .line 34
    iget-object v8, p0, Lcom/zte/mifavor/actionbar/PhoneWindowProxy;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8, v6}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 35
    iget-object v8, p0, Lcom/zte/mifavor/actionbar/PhoneWindowProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget v5, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 36
    .local v5, "targetSdk":I
    const/16 v8, 0xb

    if-ge v5, v8, :cond_2

    move v2, v6

    .line 37
    .local v2, "targetPreHoneycomb":Z
    :goto_0
    const/16 v8, 0xe

    if-ge v5, v8, :cond_3

    move v3, v6

    .line 38
    .local v3, "targetPreIcs":Z
    :goto_1
    const/16 v8, 0x15

    if-ge v5, v8, :cond_4

    move v4, v6

    .line 39
    .local v4, "targetPreL":Z
    :goto_2
    const/4 v1, 0x1

    .line 40
    .local v1, "targetHcNeedsOptions":Z
    const/16 v8, 0x8

    invoke-virtual {p0, v8}, Lcom/zte/mifavor/actionbar/PhoneWindowProxy;->hasFeature(I)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0, v6}, Lcom/zte/mifavor/actionbar/PhoneWindowProxy;->hasFeature(I)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_0
    move v0, v6

    .line 43
    .local v0, "noActionBar":Z
    :goto_3
    if-nez v2, :cond_1

    if-eqz v3, :cond_6

    if-eqz v0, :cond_6

    .line 45
    :cond_1
    invoke-super {p0, v6}, Lcom/android/internal/policy/PhoneWindow;->setNeedsMenuKey(I)V

    .line 50
    :goto_4
    return-void

    .end local v0    # "noActionBar":Z
    .end local v1    # "targetHcNeedsOptions":Z
    .end local v2    # "targetPreHoneycomb":Z
    .end local v3    # "targetPreIcs":Z
    .end local v4    # "targetPreL":Z
    :cond_2
    move v2, v7

    .line 36
    goto :goto_0

    .restart local v2    # "targetPreHoneycomb":Z
    :cond_3
    move v3, v7

    .line 37
    goto :goto_1

    .restart local v3    # "targetPreIcs":Z
    :cond_4
    move v4, v7

    .line 38
    goto :goto_2

    .restart local v1    # "targetHcNeedsOptions":Z
    .restart local v4    # "targetPreL":Z
    :cond_5
    move v0, v7

    .line 40
    goto :goto_3

    .line 47
    .restart local v0    # "noActionBar":Z
    :cond_6
    const/4 v6, 0x2

    invoke-super {p0, v6}, Lcom/android/internal/policy/PhoneWindow;->setNeedsMenuKey(I)V

    goto :goto_4
.end method
