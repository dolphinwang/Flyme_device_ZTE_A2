.class Lcom/zte/mifavor/actionbar/menu/ListPopupWindow$ResizePopupRunnable;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResizePopupRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;


# direct methods
.method private constructor <init>(Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 1308
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/ListPopupWindow$ResizePopupRunnable;->this$0:Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;Lcom/zte/mifavor/actionbar/menu/ListPopupWindow$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;
    .param p2, "x1"    # Lcom/zte/mifavor/actionbar/menu/ListPopupWindow$1;

    .prologue
    .line 1308
    invoke-direct {p0, p1}, Lcom/zte/mifavor/actionbar/menu/ListPopupWindow$ResizePopupRunnable;-><init>(Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ListPopupWindow$ResizePopupRunnable;->this$0:Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;

    # getter for: Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;->mDropDownList:Lcom/zte/mifavor/actionbar/menu/DropDownListView;
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;->access$500(Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;)Lcom/zte/mifavor/actionbar/menu/DropDownListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ListPopupWindow$ResizePopupRunnable;->this$0:Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;

    # getter for: Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;->mDropDownList:Lcom/zte/mifavor/actionbar/menu/DropDownListView;
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;->access$500(Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;)Lcom/zte/mifavor/actionbar/menu/DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/DropDownListView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ListPopupWindow$ResizePopupRunnable;->this$0:Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;

    # getter for: Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;->mDropDownList:Lcom/zte/mifavor/actionbar/menu/DropDownListView;
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;->access$500(Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;)Lcom/zte/mifavor/actionbar/menu/DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/DropDownListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ListPopupWindow$ResizePopupRunnable;->this$0:Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;

    # getter for: Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;->mDropDownList:Lcom/zte/mifavor/actionbar/menu/DropDownListView;
    invoke-static {v1}, Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;->access$500(Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;)Lcom/zte/mifavor/actionbar/menu/DropDownListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/menu/DropDownListView;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ListPopupWindow$ResizePopupRunnable;->this$0:Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;

    # getter for: Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;->mDropDownList:Lcom/zte/mifavor/actionbar/menu/DropDownListView;
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;->access$500(Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;)Lcom/zte/mifavor/actionbar/menu/DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/DropDownListView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ListPopupWindow$ResizePopupRunnable;->this$0:Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;

    iget v1, v1, Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;->mListItemExpandMaximum:I

    if-gt v0, v1, :cond_0

    .line 1313
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ListPopupWindow$ResizePopupRunnable;->this$0:Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1314
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ListPopupWindow$ResizePopupRunnable;->this$0:Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;->show()V

    .line 1316
    :cond_0
    return-void
.end method
