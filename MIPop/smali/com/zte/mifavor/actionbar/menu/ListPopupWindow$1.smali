.class Lcom/zte/mifavor/actionbar/menu/ListPopupWindow$1;
.super Lcom/zte/mifavor/actionbar/menu/ForwardingListener;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;->createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;Landroid/view/View;)V
    .locals 0
    .param p2, "x0"    # Landroid/view/View;

    .prologue
    .line 1098
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/ListPopupWindow$1;->this$0:Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;

    invoke-direct {p0, p2}, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;
    .locals 1

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ListPopupWindow$1;->this$0:Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;

    return-object v0
.end method

.method public bridge synthetic getPopup()Lcom/zte/mifavor/actionbar/menu/ShowableListMenu;
    .locals 1

    .prologue
    .line 1098
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/ListPopupWindow$1;->getPopup()Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;

    move-result-object v0

    return-object v0
.end method
