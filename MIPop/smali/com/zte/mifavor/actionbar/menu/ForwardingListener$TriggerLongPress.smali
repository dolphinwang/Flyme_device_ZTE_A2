.class Lcom/zte/mifavor/actionbar/menu/ForwardingListener$TriggerLongPress;
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
    name = "TriggerLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/actionbar/menu/ForwardingListener;


# direct methods
.method private constructor <init>(Lcom/zte/mifavor/actionbar/menu/ForwardingListener;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/ForwardingListener$TriggerLongPress;->this$0:Lcom/zte/mifavor/actionbar/menu/ForwardingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/mifavor/actionbar/menu/ForwardingListener;Lcom/zte/mifavor/actionbar/menu/ForwardingListener$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/zte/mifavor/actionbar/menu/ForwardingListener;
    .param p2, "x1"    # Lcom/zte/mifavor/actionbar/menu/ForwardingListener$1;

    .prologue
    .line 299
    invoke-direct {p0, p1}, Lcom/zte/mifavor/actionbar/menu/ForwardingListener$TriggerLongPress;-><init>(Lcom/zte/mifavor/actionbar/menu/ForwardingListener;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ForwardingListener$TriggerLongPress;->this$0:Lcom/zte/mifavor/actionbar/menu/ForwardingListener;

    # invokes: Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->onLongPress()V
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->access$300(Lcom/zte/mifavor/actionbar/menu/ForwardingListener;)V

    .line 303
    return-void
.end method
