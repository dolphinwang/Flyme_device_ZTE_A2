.class Lcom/mediatek/mom/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mom/j$a;
    }
.end annotation


# static fields
.field private static t:Lcom/mediatek/mom/j;

.field private static u:Ljava/lang/String;

.field private static v:Ljava/lang/String;

.field private static w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/mom/j$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final x:Landroid/content/pm/Signature;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 58
    sput-object v4, Lcom/mediatek/mom/j;->t:Lcom/mediatek/mom/j;

    .line 72
    const-string v0, "platform"

    sput-object v0, Lcom/mediatek/mom/j;->u:Ljava/lang/String;

    .line 73
    const-string v0, "mobilemanager"

    sput-object v0, Lcom/mediatek/mom/j;->v:Ljava/lang/String;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mediatek/mom/j;->w:Ljava/util/List;

    .line 146
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "30820239308201a2a00302010202044c96f48f300d06092a864886f70d01010505003060310b300906035504061302434e310b300906035504081302474431123010060355040713094775616e677a686f753110300e060355040a130754656e63656e74310b3009060355040b130233473111300f0603550403130857696c736f6e57753020170d3130303932303035343334335a180f32303635303632333035343334335a3060310b300906035504061302434e310b300906035504081302474431123010060355040713094775616e677a686f753110300e060355040a130754656e63656e74310b3009060355040b130233473111300f0603550403130857696c736f6e577530819f300d06092a864886f70d010101050003818d0030818902818100b56e79dbb1185a79e52d792bb3d0bb3da8010d9b87da92ec69f7dc5ad66ab6bfdff2a6a1ed285dd2358f28b72a468be7c10a2ce30c4c27323ed4edcc936080e5bedc2cbbca0b7e879c08a631182793f44bb3ea284179b263410c298e5f6831032c9702ba4a74e2ccfc9ef857f12201451602fc8e774ac59d6398511586c83d1d0203010001300d06092a864886f70d0101050500038181002475615bb65b8d8786b890535802948840387d06b1692ff3ea47ef4c435719ba1865b81e6bfa6293ce31747c3cd6b34595b485cc1563fd90107ba5845c28b95c79138f0dec288940395bc10f92f2b69d8dc410999deb38900974ce9984b678030edfba8816582f56160d87e38641288d8588d2a31e20b89f223d788dd35cc9c8"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mediatek/mom/j;->x:Landroid/content/pm/Signature;

    .line 169
    sget-object v7, Lcom/mediatek/mom/j;->w:Ljava/util/List;

    new-instance v0, Lcom/mediatek/mom/j$a;

    const/16 v1, 0x64

    sget-object v2, Lcom/mediatek/mom/j;->v:Ljava/lang/String;

    const-string v3, "com.tencent.qqpimsecure"

    sget-object v5, Lcom/mediatek/mom/j;->x:Landroid/content/pm/Signature;

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/mom/j$a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/Signature;Z)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object v0, Lcom/mediatek/mom/j;->w:Ljava/util/List;

    new-instance v7, Lcom/mediatek/mom/j$a;

    const/16 v8, 0x3ea

    sget-object v9, Lcom/mediatek/mom/j;->v:Ljava/lang/String;

    const-string v10, "com.tencent.tcuser"

    const-string v11, "com.tencent.tcuser.ztool.service.PermissionService"

    sget-object v12, Lcom/mediatek/mom/j;->x:Landroid/content/pm/Signature;

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/mediatek/mom/j$a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/Signature;Z)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    sget-object v7, Lcom/mediatek/mom/j;->w:Ljava/util/List;

    new-instance v0, Lcom/mediatek/mom/j$a;

    const/16 v1, 0x3e8

    sget-object v2, Lcom/mediatek/mom/j;->u:Ljava/lang/String;

    const-string v3, "com.mediatek.mom.test.app.mgremu"

    const/4 v6, 0x1

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/mom/j$a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/Signature;Z)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 289
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 290
    sget-object v0, Lcom/mediatek/mom/j;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 291
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/j$a;

    .line 293
    invoke-virtual {v0}, Lcom/mediatek/mom/j$a;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 294
    sget-object v3, Lcom/mediatek/mom/j;->u:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/mediatek/mom/j$a;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 295
    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_0

    .line 296
    invoke-virtual {v0}, Lcom/mediatek/mom/j$a;->c()I

    move-result v0

    .line 303
    :goto_0
    return v0

    .line 299
    :cond_1
    invoke-virtual {v0}, Lcom/mediatek/mom/j$a;->c()I

    move-result v0

    goto :goto_0

    .line 303
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 250
    sget-object v0, Lcom/mediatek/mom/j;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 251
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/j$a;

    .line 253
    const/4 v3, 0x1

    if-ne p0, v3, :cond_1

    .line 254
    invoke-virtual {v0}, Lcom/mediatek/mom/j$a;->c()I

    move-result v3

    const/16 v4, 0x3e8

    if-lt v3, v4, :cond_0

    .line 255
    invoke-virtual {v0}, Lcom/mediatek/mom/j$a;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 258
    :cond_1
    invoke-virtual {v0}, Lcom/mediatek/mom/j$a;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 261
    :cond_2
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 262
    return-object v1
.end method

.method public static a(ILandroid/content/pm/Signature;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 428
    sget-object v0, Lcom/mediatek/mom/j;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 429
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 430
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/j$a;

    .line 431
    invoke-virtual {v0}, Lcom/mediatek/mom/j$a;->c()I

    move-result v3

    if-ne p0, v3, :cond_0

    .line 432
    sget-object v3, Lcom/mediatek/mom/j;->u:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/mediatek/mom/j$a;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 446
    :goto_0
    return v0

    .line 435
    :cond_1
    invoke-virtual {v0}, Lcom/mediatek/mom/j$a;->k()Landroid/content/pm/Signature;

    move-result-object v0

    .line 436
    if-nez v0, :cond_2

    move v0, v1

    .line 438
    goto :goto_0

    .line 440
    :cond_2
    invoke-virtual {v0, p1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 441
    goto :goto_0

    .line 445
    :cond_3
    const-string v0, "ManagerIdentityHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check C with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 266
    sget-object v0, Lcom/mediatek/mom/j;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 267
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/j$a;

    .line 269
    invoke-virtual {v0}, Lcom/mediatek/mom/j$a;->c()I

    move-result v2

    if-ne p0, v2, :cond_0

    .line 270
    invoke-virtual {v0}, Lcom/mediatek/mom/j$a;->getName()Ljava/lang/String;

    move-result-object v0

    .line 273
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(II)V
    .locals 2

    .prologue
    .line 335
    invoke-static {p0}, Lcom/mediatek/mom/j;->k(I)Lcom/mediatek/mom/j$a;

    move-result-object v0

    .line 336
    if-eqz v0, :cond_0

    .line 337
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/mom/j$a;->b(Z)V

    .line 338
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/mom/j$a;->setAppId(I)V

    .line 339
    invoke-virtual {v0}, Lcom/mediatek/mom/j$a;->n()Z

    .line 341
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 382
    sget-object v0, Lcom/mediatek/mom/j;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 383
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/j$a;

    .line 385
    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/mom/j$a;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 386
    invoke-virtual {v0}, Lcom/mediatek/mom/j$a;->c()I

    move-result v0

    .line 389
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 277
    sget-object v0, Lcom/mediatek/mom/j;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 278
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/j$a;

    .line 280
    invoke-virtual {v0}, Lcom/mediatek/mom/j$a;->c()I

    move-result v2

    if-ne p0, v2, :cond_0

    .line 281
    invoke-virtual {v0}, Lcom/mediatek/mom/j$a;->i()Ljava/lang/String;

    move-result-object v0

    .line 284
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(I)Z
    .locals 1

    .prologue
    .line 307
    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_1

    .line 309
    :cond_0
    const/4 v0, 0x0

    .line 311
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/mediatek/mom/j;->l(I)Z

    move-result v0

    goto :goto_0
.end method

.method public static e(I)Z
    .locals 2

    .prologue
    const/16 v1, 0x3e8

    .line 315
    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    if-lt p0, v1, :cond_1

    :cond_0
    const/16 v0, 0x3e9

    if-eq p0, v0, :cond_1

    if-ne p0, v1, :cond_2

    .line 318
    :cond_1
    invoke-static {p0}, Lcom/mediatek/mom/j;->l(I)Z

    move-result v0

    .line 320
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f()Lcom/mediatek/mom/j;
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lcom/mediatek/mom/j;->t:Lcom/mediatek/mom/j;

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Lcom/mediatek/mom/j;

    invoke-direct {v0}, Lcom/mediatek/mom/j;-><init>()V

    sput-object v0, Lcom/mediatek/mom/j;->t:Lcom/mediatek/mom/j;

    .line 202
    :cond_0
    sget-object v0, Lcom/mediatek/mom/j;->t:Lcom/mediatek/mom/j;

    return-object v0
.end method

.method public static f(I)Z
    .locals 1

    .prologue
    .line 324
    const/16 v0, 0x3e8

    if-ge p0, v0, :cond_0

    .line 325
    const/4 v0, 0x0

    .line 327
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/mediatek/mom/j;->l(I)Z

    move-result v0

    goto :goto_0
.end method

.method public static g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/mediatek/mom/j;->a(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static g(I)Z
    .locals 1

    .prologue
    .line 331
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mediatek/mom/j;->a(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static h(I)V
    .locals 2

    .prologue
    .line 344
    invoke-static {p0}, Lcom/mediatek/mom/j;->k(I)Lcom/mediatek/mom/j$a;

    move-result-object v0

    .line 345
    if-eqz v0, :cond_0

    .line 346
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/mom/j$a;->b(Z)V

    .line 347
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/mom/j$a;->setAppId(I)V

    .line 349
    :cond_0
    return-void
.end method

.method public static i(I)Z
    .locals 1

    .prologue
    .line 352
    invoke-static {p0}, Lcom/mediatek/mom/j;->k(I)Lcom/mediatek/mom/j$a;

    move-result-object v0

    .line 353
    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {v0}, Lcom/mediatek/mom/j$a;->j()Z

    move-result v0

    .line 356
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    new-instance v0, Lcom/mediatek/common/jpe/a;

    invoke-direct {v0}, Lcom/mediatek/common/jpe/a;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/common/jpe/a;->a()V

    .line 208
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x8050000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".service.PermControlService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 211
    const-string v0, "ManagerIdentityHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moma = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , serv = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    sget-object v7, Lcom/mediatek/mom/j;->w:Ljava/util/List;

    new-instance v0, Lcom/mediatek/mom/j$a;

    const/16 v1, 0x3e9

    sget-object v2, Lcom/mediatek/mom/j;->u:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/mom/j$a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/Signature;Z)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 222
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/mediatek/mom/j;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 223
    sget-object v0, Lcom/mediatek/mom/j;->w:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/j$a;

    .line 225
    :try_start_0
    invoke-virtual {v0}, Lcom/mediatek/mom/j$a;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2200

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 228
    if-eqz v3, :cond_0

    .line 229
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/mediatek/mom/j$a;->b(Z)V

    .line 230
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/mediatek/mom/j$a;->setAppId(I)V

    .line 231
    const-string v3, "ManagerIdentityHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Manager identity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/mom/j$a;->c()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " installed with appId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/mom/j$a;->getAppId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 233
    :catch_0
    move-exception v3

    .line 234
    const-string v3, "ManagerIdentityHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t find manager package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/mom/j$a;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 238
    :cond_1
    return-void
.end method

.method public static j(I)I
    .locals 4

    .prologue
    .line 371
    sget-object v0, Lcom/mediatek/mom/j;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 372
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/j$a;

    .line 374
    if-ltz p0, :cond_0

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-virtual {v0}, Lcom/mediatek/mom/j$a;->getAppId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 375
    invoke-virtual {v0}, Lcom/mediatek/mom/j$a;->c()I

    move-result v0

    .line 378
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static k(I)Lcom/mediatek/mom/j$a;
    .locals 3

    .prologue
    .line 393
    sget-object v0, Lcom/mediatek/mom/j;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 394
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/j$a;

    .line 396
    invoke-virtual {v0}, Lcom/mediatek/mom/j$a;->c()I

    move-result v2

    if-ne p0, v2, :cond_0

    .line 400
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static l(I)Z
    .locals 2

    .prologue
    .line 404
    sget-object v0, Lcom/mediatek/mom/j;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 405
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/j$a;

    .line 407
    invoke-virtual {v0}, Lcom/mediatek/mom/j$a;->c()I

    move-result v0

    if-ne p0, v0, :cond_0

    .line 408
    const/4 v0, 0x1

    .line 411
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static m(I)Z
    .locals 3

    .prologue
    .line 415
    sget-object v0, Lcom/mediatek/mom/j;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 416
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 417
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/j$a;

    .line 418
    invoke-virtual {v0}, Lcom/mediatek/mom/j$a;->c()I

    move-result v2

    if-ne p0, v2, :cond_0

    .line 419
    sget-object v2, Lcom/mediatek/mom/j;->u:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/mediatek/mom/j$a;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 420
    const/4 v0, 0x1

    .line 424
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
