.class Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MenuItemLayoutInfo"
.end annotation


# instance fields
.field left:I

.field top:I

.field view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "preLayout"    # Z

    .prologue
    .line 1033
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1034
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    .line 1035
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    .line 1036
    if-eqz p2, :cond_0

    .line 1039
    iget v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    .line 1040
    iget v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    .line 1042
    :cond_0
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    .line 1043
    return-void
.end method
