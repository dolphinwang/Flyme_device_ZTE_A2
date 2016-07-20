.class public Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;
.super Ljava/lang/Object;
.source "KeyguardPluginFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardPluginFactory"

.field private static mCarrierTextExt:Lcom/mediatek/keyguard/ext/ICarrierTextExt;

.field private static mCustomizeClock:Lcom/mediatek/keyguard/ext/ICustomizeClock;

.field private static mEmergencyButtonExt:Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;

.field private static mKeyguardUtilExt:Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;

.field private static mLockScreenExt:Lcom/mediatek/keyguard/ext/ILockScreenExt;

.field private static mOperatorSIMString:Lcom/mediatek/keyguard/ext/IOperatorSIMString;

.field private static sCardInfoExt:Lcom/mediatek/keyguard/ext/ICardInfoExt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    sput-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->sCardInfoExt:Lcom/mediatek/keyguard/ext/ICardInfoExt;

    .line 14
    sput-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mCustomizeClock:Lcom/mediatek/keyguard/ext/ICustomizeClock;

    .line 15
    sput-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mEmergencyButtonExt:Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;

    .line 16
    sput-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mCarrierTextExt:Lcom/mediatek/keyguard/ext/ICarrierTextExt;

    .line 17
    sput-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mKeyguardUtilExt:Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;

    .line 18
    sput-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mOperatorSIMString:Lcom/mediatek/keyguard/ext/IOperatorSIMString;

    .line 19
    sput-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mLockScreenExt:Lcom/mediatek/keyguard/ext/ILockScreenExt;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getCardInfoExt(Landroid/content/Context;)Lcom/mediatek/keyguard/ext/ICardInfoExt;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const-class v1, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->sCardInfoExt:Lcom/mediatek/keyguard/ext/ICardInfoExt;

    if-nez v0, :cond_0

    .line 28
    const-class v0, Lcom/mediatek/keyguard/ext/ICardInfoExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/keyguard/ext/ICardInfoExt;

    sput-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->sCardInfoExt:Lcom/mediatek/keyguard/ext/ICardInfoExt;

    .line 30
    const-string v0, "KeyguardPluginFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCardInfoExt cardInfoExt= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->sCardInfoExt:Lcom/mediatek/keyguard/ext/ICardInfoExt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    sget-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->sCardInfoExt:Lcom/mediatek/keyguard/ext/ICardInfoExt;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/mediatek/keyguard/ext/DefaultCardInfoExt;

    invoke-direct {v0}, Lcom/mediatek/keyguard/ext/DefaultCardInfoExt;-><init>()V

    sput-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->sCardInfoExt:Lcom/mediatek/keyguard/ext/ICardInfoExt;

    .line 34
    const-string v0, "KeyguardPluginFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCardInfoExt get DefaultCardInfoExt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->sCardInfoExt:Lcom/mediatek/keyguard/ext/ICardInfoExt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_0
    sget-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->sCardInfoExt:Lcom/mediatek/keyguard/ext/ICardInfoExt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getCarrierTextExt(Landroid/content/Context;)Lcom/mediatek/keyguard/ext/ICarrierTextExt;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    const-class v1, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mCarrierTextExt:Lcom/mediatek/keyguard/ext/ICarrierTextExt;

    if-nez v0, :cond_0

    .line 73
    const-class v0, Lcom/mediatek/keyguard/ext/ICarrierTextExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/keyguard/ext/ICarrierTextExt;

    sput-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mCarrierTextExt:Lcom/mediatek/keyguard/ext/ICarrierTextExt;

    .line 75
    const-string v0, "KeyguardPluginFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCarrierTextExt carrierTextExt= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mCarrierTextExt:Lcom/mediatek/keyguard/ext/ICarrierTextExt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sget-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mCarrierTextExt:Lcom/mediatek/keyguard/ext/ICarrierTextExt;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/mediatek/keyguard/ext/DefaultCarrierTextExt;

    invoke-direct {v0}, Lcom/mediatek/keyguard/ext/DefaultCarrierTextExt;-><init>()V

    sput-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mCarrierTextExt:Lcom/mediatek/keyguard/ext/ICarrierTextExt;

    .line 79
    const-string v0, "KeyguardPluginFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCarrierTextExt get DefaultCarrierTextExt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mCarrierTextExt:Lcom/mediatek/keyguard/ext/ICarrierTextExt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    sget-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mCarrierTextExt:Lcom/mediatek/keyguard/ext/ICarrierTextExt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getCustomizeClock(Landroid/content/Context;)Lcom/mediatek/keyguard/ext/ICustomizeClock;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const-class v1, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mCustomizeClock:Lcom/mediatek/keyguard/ext/ICustomizeClock;

    if-nez v0, :cond_0

    .line 43
    const-class v0, Lcom/mediatek/keyguard/ext/ICustomizeClock;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/keyguard/ext/ICustomizeClock;

    sput-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mCustomizeClock:Lcom/mediatek/keyguard/ext/ICustomizeClock;

    .line 45
    const-string v0, "KeyguardPluginFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCustomizeClock customizeClock= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mCustomizeClock:Lcom/mediatek/keyguard/ext/ICustomizeClock;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    sget-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mCustomizeClock:Lcom/mediatek/keyguard/ext/ICustomizeClock;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/mediatek/keyguard/ext/DefaultCustomizeClock;

    invoke-direct {v0, p0}, Lcom/mediatek/keyguard/ext/DefaultCustomizeClock;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mCustomizeClock:Lcom/mediatek/keyguard/ext/ICustomizeClock;

    .line 49
    const-string v0, "KeyguardPluginFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCustomizeClock get DefaultCustomizeClock = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mCustomizeClock:Lcom/mediatek/keyguard/ext/ICustomizeClock;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    sget-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mCustomizeClock:Lcom/mediatek/keyguard/ext/ICustomizeClock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getEmergencyButtonExt(Landroid/content/Context;)Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const-class v1, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mEmergencyButtonExt:Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;

    if-nez v0, :cond_0

    .line 58
    const-class v0, Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;

    sput-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mEmergencyButtonExt:Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;

    .line 60
    const-string v0, "KeyguardPluginFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEmergencyButtonExt emergencyButtonExt= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mEmergencyButtonExt:Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    sget-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mEmergencyButtonExt:Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/mediatek/keyguard/ext/DefaultEmergencyButtonExt;

    invoke-direct {v0}, Lcom/mediatek/keyguard/ext/DefaultEmergencyButtonExt;-><init>()V

    sput-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mEmergencyButtonExt:Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;

    .line 64
    const-string v0, "KeyguardPluginFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEmergencyButtonExt get DefaultEmergencyButtonExt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mEmergencyButtonExt:Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    sget-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mEmergencyButtonExt:Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getKeyguardUtilExt(Landroid/content/Context;)Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    const-class v1, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mKeyguardUtilExt:Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;

    if-nez v0, :cond_0

    .line 88
    const-class v0, Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;

    sput-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mKeyguardUtilExt:Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;

    .line 90
    const-string v0, "KeyguardPluginFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getKeyguardUtilExt keyguardUtilExt= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mKeyguardUtilExt:Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sget-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mKeyguardUtilExt:Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/mediatek/keyguard/ext/DefaultKeyguardUtilExt;

    invoke-direct {v0}, Lcom/mediatek/keyguard/ext/DefaultKeyguardUtilExt;-><init>()V

    sput-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mKeyguardUtilExt:Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;

    .line 94
    const-string v0, "KeyguardPluginFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getKeyguardUtilExt get DefaultKeyguardUtilExt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mKeyguardUtilExt:Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    sget-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mKeyguardUtilExt:Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getLockScreenExt(Landroid/content/Context;)Lcom/mediatek/keyguard/ext/ILockScreenExt;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    const-class v1, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mLockScreenExt:Lcom/mediatek/keyguard/ext/ILockScreenExt;

    if-nez v0, :cond_0

    .line 117
    const-class v0, Lcom/mediatek/keyguard/ext/ILockScreenExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/keyguard/ext/ILockScreenExt;

    sput-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mLockScreenExt:Lcom/mediatek/keyguard/ext/ILockScreenExt;

    .line 119
    const-string v0, "KeyguardPluginFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLockScreenExt lockScreenExt= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mLockScreenExt:Lcom/mediatek/keyguard/ext/ILockScreenExt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    sget-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mLockScreenExt:Lcom/mediatek/keyguard/ext/ILockScreenExt;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/mediatek/keyguard/ext/DefaultLockScreenExt;

    invoke-direct {v0}, Lcom/mediatek/keyguard/ext/DefaultLockScreenExt;-><init>()V

    sput-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mLockScreenExt:Lcom/mediatek/keyguard/ext/ILockScreenExt;

    .line 123
    const-string v0, "KeyguardPluginFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLockScreenExt get DefaultLockScreenExt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mLockScreenExt:Lcom/mediatek/keyguard/ext/ILockScreenExt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    sget-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mLockScreenExt:Lcom/mediatek/keyguard/ext/ILockScreenExt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getOperatorSIMString(Landroid/content/Context;)Lcom/mediatek/keyguard/ext/IOperatorSIMString;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    const-class v1, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mOperatorSIMString:Lcom/mediatek/keyguard/ext/IOperatorSIMString;

    if-nez v0, :cond_0

    .line 102
    const-class v0, Lcom/mediatek/keyguard/ext/IOperatorSIMString;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/keyguard/ext/IOperatorSIMString;

    sput-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mOperatorSIMString:Lcom/mediatek/keyguard/ext/IOperatorSIMString;

    .line 104
    const-string v0, "KeyguardPluginFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOperatorSIMString operatorSIMString= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mOperatorSIMString:Lcom/mediatek/keyguard/ext/IOperatorSIMString;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sget-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mOperatorSIMString:Lcom/mediatek/keyguard/ext/IOperatorSIMString;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/mediatek/keyguard/ext/DefaultOperatorSIMString;

    invoke-direct {v0}, Lcom/mediatek/keyguard/ext/DefaultOperatorSIMString;-><init>()V

    sput-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mOperatorSIMString:Lcom/mediatek/keyguard/ext/IOperatorSIMString;

    .line 108
    const-string v0, "KeyguardPluginFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOperatorSIMString get DefaultOperatorSIMString = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mOperatorSIMString:Lcom/mediatek/keyguard/ext/IOperatorSIMString;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    sget-object v0, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;->mOperatorSIMString:Lcom/mediatek/keyguard/ext/IOperatorSIMString;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
