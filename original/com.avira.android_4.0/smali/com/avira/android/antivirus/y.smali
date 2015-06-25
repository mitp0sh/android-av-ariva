.class public final Lcom/avira/android/antivirus/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = null

.field public static b:Ljava/lang/String; = null

.field public static c:Ljava/lang/String; = null

.field public static final sProxyPort:Ljava/lang/String; = ""

.field public static final sProxyServer:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "http://10.130.24.13:443/WorkingUpdate/"

    sput-object v0, Lcom/avira/android/antivirus/y;->a:Ljava/lang/String;

    .line 19
    const-string v0, "http://10.130.24.13:8080/WorkingUpdate/"

    sput-object v0, Lcom/avira/android/antivirus/y;->b:Ljava/lang/String;

    .line 20
    const-string v0, "http://10.130.24.13:80/Fakeserver/WorkingUpdate/"

    sput-object v0, Lcom/avira/android/antivirus/y;->c:Ljava/lang/String;

    return-void
.end method
