.class public Lcom/zte/zgesture/data/MultitouchApp;
.super Ljava/lang/Object;
.source "MultitouchApp.java"


# static fields
.field private static multitouchAppPackages:[Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.halfbrick.fruitninja"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.gamestar.pianoperfect"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.cat.pianocnperfect"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ly.pp.justpiano"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.tencent.game.RM"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.jiezouwang.game.mg"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.tapulous.taptaprevenge4"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.rexsee.kkc.s76844"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.redatoms.games.beatmasterpad"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.ledong.musicbox"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.bti.myPiano"

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/zgesture/data/MultitouchApp;->multitouchAppPackages:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/zte/zgesture/data/MultitouchApp;->context:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method public isAlertApp(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 31
    if-nez p1, :cond_1

    .line 41
    :cond_0
    :goto_0
    return v1

    .line 35
    :cond_1
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    sget-object v2, Lcom/zte/zgesture/data/MultitouchApp;->multitouchAppPackages:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 36
    sget-object v2, Lcom/zte/zgesture/data/MultitouchApp;->multitouchAppPackages:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 37
    const/4 v1, 0x1

    goto :goto_0

    .line 35
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setNoRemind(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "noremind"    # Z

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 66
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v2, p0, Lcom/zte/zgesture/data/MultitouchApp;->context:Landroid/content/Context;

    const-string v3, "no_remind_app_list"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 63
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 64
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "no_remind"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 65
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public shouldShowAlertDialog(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 45
    if-nez p1, :cond_1

    .line 54
    :cond_0
    :goto_0
    return v1

    .line 49
    :cond_1
    iget-object v2, p0, Lcom/zte/zgesture/data/MultitouchApp;->context:Landroid/content/Context;

    const-string v3, "no_remind_app_list"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 50
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_2

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 51
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method
