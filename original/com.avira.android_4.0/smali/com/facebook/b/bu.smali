.class final Lcom/facebook/b/bu;
.super Lcom/facebook/b/cc;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 36
    const v2, 0x10006

    const v3, 0x10007

    const v4, 0x13353c9

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/b/cc;-><init>(Landroid/content/Context;IIILjava/lang/String;)V

    .line 39
    iput-object p3, p0, Lcom/facebook/b/bu;->a:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method protected final a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 45
    const-string v0, "com.facebook.platform.extra.OBJECT_ID"

    iget-object v1, p0, Lcom/facebook/b/bu;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method
