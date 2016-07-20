.class public abstract Lcom/zte/mifavor/widget/PreferenceActivityZTE;
.super Lcom/zte/mifavor/preference/PreferenceActivity;
.source "PreferenceActivityZTE.java"


# instance fields
.field private final ACTIONBAR_HEIGHT:I

.field private final INDICATOR_HEIGHT:I

.field private final SPLIT_ACTIONBAR_COLOR:I

.field private final SPLIT_ACTIONBAR_HEIGHT:I

.field private flag:I

.field private mActionbarHeight:I

.field private mBackground:Landroid/widget/LinearLayout;

.field private mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mSplitActionbarHeight:I

.field private mSplitBackground:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x34

    .line 113
    invoke-direct {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/mifavor/widget/PreferenceActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 116
    iput v2, p0, Lcom/zte/mifavor/widget/PreferenceActivityZTE;->flag:I

    .line 118
    const/16 v0, 0x19

    iput v0, p0, Lcom/zte/mifavor/widget/PreferenceActivityZTE;->INDICATOR_HEIGHT:I

    .line 119
    iput v1, p0, Lcom/zte/mifavor/widget/PreferenceActivityZTE;->ACTIONBAR_HEIGHT:I

    .line 120
    iput v1, p0, Lcom/zte/mifavor/widget/PreferenceActivityZTE;->SPLIT_ACTIONBAR_HEIGHT:I

    .line 121
    iput v1, p0, Lcom/zte/mifavor/widget/PreferenceActivityZTE;->mActionbarHeight:I

    .line 122
    iput v2, p0, Lcom/zte/mifavor/widget/PreferenceActivityZTE;->mSplitActionbarHeight:I

    .line 123
    const v0, -0x1d1d1e

    iput v0, p0, Lcom/zte/mifavor/widget/PreferenceActivityZTE;->SPLIT_ACTIONBAR_COLOR:I

    return-void
.end method


# virtual methods
.method public fillActionbarTab(Z)V
    .locals 0
    .param p1, "fillTab"    # Z

    .prologue
    .line 143
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/zte/mifavor/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 137
    :cond_0
    return-void
.end method

.method public setIndicatorColor(ZZI)V
    .locals 0
    .param p1, "fillActionBar"    # Z
    .param p2, "fillSplitAactionBar"    # Z
    .param p3, "color"    # I

    .prologue
    .line 158
    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/mifavor/widget/PreferenceActivityZTE;->setIndicatorColor(ZZI)V

    .line 159
    return-void
.end method
