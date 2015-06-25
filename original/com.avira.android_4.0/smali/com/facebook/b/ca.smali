.class final Lcom/facebook/b/ca;
.super Lcom/facebook/b/bz;
.source "SourceFile"


# static fields
.field static final WAKIZASHI_PACKAGE:Ljava/lang/String; = "com.facebook.wakizashi"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/b/bz;-><init>(B)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/facebook/b/ca;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    const-string v0, "com.facebook.wakizashi"

    return-object v0
.end method
