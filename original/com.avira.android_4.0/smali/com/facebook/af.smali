.class final Lcom/facebook/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final a:Lcom/facebook/ag;

.field final b:Lcom/facebook/a;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:Lcom/facebook/y;

.field f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/facebook/y;Lcom/facebook/ag;Lcom/facebook/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1050
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1051
    iput-object p1, p0, Lcom/facebook/af;->e:Lcom/facebook/y;

    .line 1052
    iput-object p3, p0, Lcom/facebook/af;->b:Lcom/facebook/a;

    .line 1053
    iput-object p4, p0, Lcom/facebook/af;->c:Ljava/lang/String;

    .line 1054
    iput-object p2, p0, Lcom/facebook/af;->a:Lcom/facebook/ag;

    .line 1055
    iput-object p5, p0, Lcom/facebook/af;->d:Ljava/lang/String;

    .line 1056
    return-void
.end method

.method static a(Lcom/facebook/y;Lcom/facebook/a;)Lcom/facebook/af;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1059
    new-instance v0, Lcom/facebook/af;

    sget-object v2, Lcom/facebook/ag;->SUCCESS:Lcom/facebook/ag;

    move-object v1, p0

    move-object v3, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/af;-><init>(Lcom/facebook/y;Lcom/facebook/ag;Lcom/facebook/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static a(Lcom/facebook/y;Ljava/lang/String;)Lcom/facebook/af;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1063
    new-instance v0, Lcom/facebook/af;

    sget-object v2, Lcom/facebook/ag;->CANCEL:Lcom/facebook/ag;

    move-object v1, p0

    move-object v4, p1

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/af;-><init>(Lcom/facebook/y;Lcom/facebook/ag;Lcom/facebook/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static a(Lcom/facebook/y;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/af;
    .locals 1

    .prologue
    .line 1067
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/facebook/af;->a(Lcom/facebook/y;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/af;

    move-result-object v0

    return-object v0
.end method

.method static a(Lcom/facebook/y;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/af;
    .locals 6

    .prologue
    .line 1072
    const-string v0, ": "

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v1}, Lcom/facebook/b/cl;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    .line 1073
    new-instance v0, Lcom/facebook/af;

    sget-object v2, Lcom/facebook/ag;->ERROR:Lcom/facebook/ag;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/af;-><init>(Lcom/facebook/y;Lcom/facebook/ag;Lcom/facebook/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
