.class Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup$2;
.super Ljava/lang/Object;
.source "StandardMenuPopup.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


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
    .line 78
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup$2;->this$0:Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 81
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup$2;->this$0:Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;

    # getter for: Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->access$200(Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;)Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup$2;->this$0:Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;

    # getter for: Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->access$200(Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;)Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup$2;->this$0:Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    # setter for: Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;
    invoke-static {v0, v1}, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->access$202(Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;Landroid/view/ViewTreeObserver;)Landroid/view/ViewTreeObserver;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup$2;->this$0:Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;

    # getter for: Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->access$200(Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;)Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup$2;->this$0:Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;

    # getter for: Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-static {v1}, Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;->access$300(Lcom/zte/mifavor/actionbar/menu/StandardMenuPopup;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 89
    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 90
    return-void
.end method
