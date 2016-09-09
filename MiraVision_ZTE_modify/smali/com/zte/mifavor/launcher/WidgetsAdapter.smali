.class public abstract Lcom/zte/mifavor/launcher/WidgetsAdapter;
.super Ljava/lang/Object;
.source "WidgetsAdapter.java"


# static fields
.field public static final ACTION_BG_COLOR_CHANGED:Ljava/lang/String; = "com.zte.mifavorlauncher.support.BG_COLOR_CHANGED"

.field public static final ACTION_SETTING_ACTION:Ljava/lang/String; = "com.zte.mifavorlauncher.support.SETTING_ACTION"

.field public static final TAG_BGCOLOR:Ljava/lang/String; = "bgColor"

.field public static final TAG_SENDER:Ljava/lang/String; = "sender"

.field public static final TAG_WIDGET_ID:Ljava/lang/String; = "widgetId"

.field private static mAdapter:Lcom/zte/mifavor/launcher/WidgetsAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zte/mifavor/launcher/WidgetsAdapter;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    sget-object v0, Lcom/zte/mifavor/launcher/WidgetsAdapter;->mAdapter:Lcom/zte/mifavor/launcher/WidgetsAdapter;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/zte/mifavor/launcher/model/WidgetsAdapterImpl;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/launcher/model/WidgetsAdapterImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/mifavor/launcher/WidgetsAdapter;->mAdapter:Lcom/zte/mifavor/launcher/WidgetsAdapter;

    .line 22
    :cond_0
    sget-object v0, Lcom/zte/mifavor/launcher/WidgetsAdapter;->mAdapter:Lcom/zte/mifavor/launcher/WidgetsAdapter;

    return-object v0
.end method


# virtual methods
.method public abstract backgroundChanged(ILjava/lang/String;I)V
.end method

.method public abstract onActionSetting(ILjava/lang/String;I)V
.end method
