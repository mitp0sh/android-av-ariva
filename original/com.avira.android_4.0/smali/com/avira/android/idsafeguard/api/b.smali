.class public final Lcom/avira/android/idsafeguard/api/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/avira/android/database/h;)V
    .locals 3

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Lcom/avira/android/common/web/p;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/idsafeguard/api/b;->c:Ljava/lang/String;

    .line 36
    invoke-static {}, Lcom/avira/android/common/web/p;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/idsafeguard/api/b;->d:Ljava/lang/String;

    .line 38
    const v0, 0x7f08008d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/idsafeguard/api/b;->b:Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/avira/android/device/a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/idsafeguard/api/b;->e:Ljava/lang/String;

    .line 44
    const-string v0, "settingRegisteredServerDeviceId"

    invoke-static {}, Lcom/avira/android/database/a;->a()Lcom/avira/android/database/g;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p2, v0, v1, v2}, Lcom/avira/android/database/h;->a(Ljava/lang/String;Lcom/avira/android/database/g;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/idsafeguard/api/b;->a:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/avira/android/idsafeguard/api/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/avira/android/idsafeguard/api/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/avira/android/idsafeguard/api/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/avira/android/idsafeguard/api/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/avira/android/idsafeguard/api/b;->a:Ljava/lang/String;

    return-object v0
.end method
