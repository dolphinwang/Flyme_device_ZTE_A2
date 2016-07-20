.class Lcom/zte/navikey/NaviKeyActivity$4;
.super Ljava/lang/Object;
.source "NaviKeyActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/navikey/NaviKeyActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/navikey/NaviKeyActivity;


# direct methods
.method constructor <init>(Lcom/zte/navikey/NaviKeyActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/navikey/NaviKeyActivity$4;->this$0:Lcom/zte/navikey/NaviKeyActivity;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method
