.class Lcom/zte/mifavor/actionbar/menu/ListPopupWindow$PopupDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;


# direct methods
.method private constructor <init>(Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 1287
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/ListPopupWindow$PopupDataSetObserver;->this$0:Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;Lcom/zte/mifavor/actionbar/menu/ListPopupWindow$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;
    .param p2, "x1"    # Lcom/zte/mifavor/actionbar/menu/ListPopupWindow$1;

    .prologue
    .line 1287
    invoke-direct {p0, p1}, Lcom/zte/mifavor/actionbar/menu/ListPopupWindow$PopupDataSetObserver;-><init>(Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ListPopupWindow$PopupDataSetObserver;->this$0:Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1292
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ListPopupWindow$PopupDataSetObserver;->this$0:Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;->show()V

    .line 1294
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ListPopupWindow$PopupDataSetObserver;->this$0:Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/ListPopupWindow;->dismiss()V

    .line 1299
    return-void
.end method
