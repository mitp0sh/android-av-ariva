.class public Lcom/avira/android/antivirus/be;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static a:Z


# instance fields
.field private b:Lcom/avira/android/antivirus/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avira/android/antivirus/be;->a:Z

    .line 17
    const-class v0, Lcom/avira/android/antivirus/be;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/antivirus/be;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/avira/android/antivirus/be;-><init>(B)V

    .line 25
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/android/antivirus/be;->b:Lcom/avira/android/antivirus/h;

    .line 36
    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    sput-boolean v0, Lcom/avira/android/antivirus/be;->a:Z

    .line 45
    return-void
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avira/android/antivirus/be;->a:Z

    .line 53
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connectivity: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v1, Lcom/avira/android/antivirus/be;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/avira/android/antivirus/i;->a()Lcom/avira/android/antivirus/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avira/android/antivirus/i;->b(Ljava/lang/String;)V

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Retry request on update component: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/avira/android/antivirus/be;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v1, Lcom/avira/android/antivirus/be;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/avira/android/antivirus/i;->a()Lcom/avira/android/antivirus/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avira/android/antivirus/i;->b(Ljava/lang/String;)V

    .line 65
    sget-boolean v0, Lcom/avira/android/antivirus/be;->a:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 68
    const-string v0, "Retry to perform component update..."

    .line 69
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v1, Lcom/avira/android/antivirus/be;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/avira/android/antivirus/i;->a()Lcom/avira/android/antivirus/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avira/android/antivirus/i;->b(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/avira/android/antivirus/be;->b:Lcom/avira/android/antivirus/h;

    if-nez v0, :cond_0

    .line 73
    invoke-static {}, Lcom/avira/android/antivirus/AntivirusComponentFactory;->b()Lcom/avira/android/antivirus/h;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antivirus/be;->b:Lcom/avira/android/antivirus/h;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/avira/android/antivirus/be;->b:Lcom/avira/android/antivirus/h;

    invoke-interface {v0}, Lcom/avira/android/antivirus/h;->a()V

    .line 76
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avira/android/antivirus/be;->a:Z

    .line 78
    :cond_1
    return-void
.end method
