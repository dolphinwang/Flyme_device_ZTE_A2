.class Lcom/zte/zgesture/setting/TryActivity$1;
.super Ljava/lang/Object;
.source "TryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zgesture/setting/TryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/setting/TryActivity;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/setting/TryActivity;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/zte/zgesture/setting/TryActivity$1;->this$0:Lcom/zte/zgesture/setting/TryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity$1;->this$0:Lcom/zte/zgesture/setting/TryActivity;

    const-class v2, Lcom/zte/zgesture/setting/AppSelectActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/zte/zgesture/setting/TryActivity$1;->this$0:Lcom/zte/zgesture/setting/TryActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/zte/zgesture/setting/TryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 84
    return-void
.end method
