.class public final Lcom/avira/android/utilities/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/avira/android/database/h;)V
    .locals 3

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "settingUuid"

    invoke-static {}, Lcom/avira/android/database/a;->a()Lcom/avira/android/database/g;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p1, v0, v1, v2}, Lcom/avira/android/database/h;->a(Ljava/lang/String;Lcom/avira/android/database/g;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    const-string v1, "settingUuid"

    invoke-static {}, Lcom/avira/android/database/a;->a()Lcom/avira/android/database/g;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v2}, Lcom/avira/android/database/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/database/g;)I

    .line 34
    :cond_0
    iput-object v0, p0, Lcom/avira/android/utilities/a;->a:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/avira/android/utilities/a;->a:Ljava/lang/String;

    return-object v0
.end method
