.class Lcom/zte/mifavor/actionbar/menu/ForwardingListener$DisallowIntercept;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/actionbar/menu/ForwardingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisallowIntercept"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/actionbar/menu/ForwardingListener;


# direct methods
.method private constructor <init>(Lcom/zte/mifavor/actionbar/menu/ForwardingListener;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/ForwardingListener$DisallowIntercept;->this$0:Lcom/zte/mifavor/actionbar/menu/ForwardingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/mifavor/actionbar/menu/ForwardingListener;Lcom/zte/mifavor/actionbar/menu/ForwardingListener$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/zte/mifavor/actionbar/menu/ForwardingListener;
    .param p2, "x1"    # Lcom/zte/mifavor/actionbar/menu/ForwardingListener$1;

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/zte/mifavor/actionbar/menu/ForwardingListener$DisallowIntercept;-><init>(Lcom/zte/mifavor/actionbar/menu/ForwardingListener;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 294
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ForwardingListener$DisallowIntercept;->this$0:Lcom/zte/mifavor/actionbar/menu/ForwardingListener;

    # getter for: Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->mSrc:Landroid/view/View;
    invoke-static {v1}, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->access$200(Lcom/zte/mifavor/actionbar/menu/ForwardingListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 295
    .local v0, "parent":Landroid/view/ViewParent;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 296
    return-void
.end method
