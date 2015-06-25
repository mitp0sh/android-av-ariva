.class public final enum Lcom/a/a/k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/a/a/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACCESSED:Lcom/a/a/k;

.field public static final enum CREATED:Lcom/a/a/k;

.field private static final synthetic ENUM$VALUES:[Lcom/a/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 184
    new-instance v0, Lcom/a/a/k;

    const-string v1, "ACCESSED"

    invoke-direct {v0, v1, v2}, Lcom/a/a/k;-><init>(Ljava/lang/String;I)V

    .line 185
    sput-object v0, Lcom/a/a/k;->ACCESSED:Lcom/a/a/k;

    .line 186
    new-instance v0, Lcom/a/a/k;

    const-string v1, "CREATED"

    invoke-direct {v0, v1, v3}, Lcom/a/a/k;-><init>(Ljava/lang/String;I)V

    .line 187
    sput-object v0, Lcom/a/a/k;->CREATED:Lcom/a/a/k;

    .line 183
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/a/a/k;

    sget-object v1, Lcom/a/a/k;->ACCESSED:Lcom/a/a/k;

    aput-object v1, v0, v2

    sget-object v1, Lcom/a/a/k;->CREATED:Lcom/a/a/k;

    aput-object v1, v0, v3

    sput-object v0, Lcom/a/a/k;->ENUM$VALUES:[Lcom/a/a/k;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/a/k;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/a/a/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/a/k;

    return-object v0
.end method

.method public static values()[Lcom/a/a/k;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/a/a/k;->ENUM$VALUES:[Lcom/a/a/k;

    array-length v1, v0

    new-array v2, v1, [Lcom/a/a/k;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
