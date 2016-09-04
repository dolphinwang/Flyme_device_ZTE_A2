.class Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup$1;
.super Ljava/lang/Object;
.source "StandardMenuPopup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup$1;->this$0:Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 65
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup$1;->this$0:Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup$1;->this$0:Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;

    # getter for: Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mPopup:Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;
    invoke-static {v1}, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->access$000(Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;)Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;->isModal()Z

    move-result v1

    if-nez v1, :cond_1

    .line 66
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup$1;->this$0:Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;

    # getter for: Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;
    invoke-static {v1}, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->access$100(Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;)Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_2

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup$1;->this$0:Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->dismiss()V

    .line 74
    .end local v0    # "anchor":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 71
    .restart local v0    # "anchor":Landroid/view/View;
    :cond_2
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup$1;->this$0:Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;

    # getter for: Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mPopup:Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;
    invoke-static {v1}, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->access$000(Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;)Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;->show()V

    goto :goto_0
.end method
