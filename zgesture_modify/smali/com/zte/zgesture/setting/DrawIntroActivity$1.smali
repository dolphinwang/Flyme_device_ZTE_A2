.class Lcom/zte/zgesture/setting/DrawIntroActivity$1;
.super Ljava/lang/Object;
.source "DrawIntroActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zgesture/setting/DrawIntroActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/setting/DrawIntroActivity;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/setting/DrawIntroActivity;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/zte/zgesture/setting/DrawIntroActivity$1;->this$0:Lcom/zte/zgesture/setting/DrawIntroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zte/zgesture/setting/DrawIntroActivity$1;->this$0:Lcom/zte/zgesture/setting/DrawIntroActivity;

    const-class v2, Lcom/zte/zgesture/setting/AppSelectActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/zte/zgesture/setting/DrawIntroActivity$1;->this$0:Lcom/zte/zgesture/setting/DrawIntroActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/zte/zgesture/setting/DrawIntroActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 65
    return-void
.end method
