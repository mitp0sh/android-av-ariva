.class final Lcom/facebook/c/f;
.super Lcom/facebook/c/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/c/h",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final CASTTOMAP_METHOD:Ljava/lang/String; = "asMap"

.field private static final CAST_METHOD:Ljava/lang/String; = "cast"

.field private static final CLEAR_METHOD:Ljava/lang/String; = "clear"

.field private static final CONTAINSKEY_METHOD:Ljava/lang/String; = "containsKey"

.field private static final CONTAINSVALUE_METHOD:Ljava/lang/String; = "containsValue"

.field private static final ENTRYSET_METHOD:Ljava/lang/String; = "entrySet"

.field private static final GETINNERJSONOBJECT_METHOD:Ljava/lang/String; = "getInnerJSONObject"

.field private static final GETPROPERTYASLIST_METHOD:Ljava/lang/String; = "getPropertyAsList"

.field private static final GETPROPERTYAS_METHOD:Ljava/lang/String; = "getPropertyAs"

.field private static final GETPROPERTY_METHOD:Ljava/lang/String; = "getProperty"

.field private static final GET_METHOD:Ljava/lang/String; = "get"

.field private static final ISEMPTY_METHOD:Ljava/lang/String; = "isEmpty"

.field private static final KEYSET_METHOD:Ljava/lang/String; = "keySet"

.field private static final PUTALL_METHOD:Ljava/lang/String; = "putAll"

.field private static final PUT_METHOD:Ljava/lang/String; = "put"

.field private static final REMOVEPROPERTY_METHOD:Ljava/lang/String; = "removeProperty"

.field private static final REMOVE_METHOD:Ljava/lang/String; = "remove"

.field private static final SETPROPERTY_METHOD:Ljava/lang/String; = "setProperty"

.field private static final SIZE_METHOD:Ljava/lang/String; = "size"

.field private static final VALUES_METHOD:Ljava/lang/String; = "values"


# instance fields
.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 503
    invoke-direct {p0, p1}, Lcom/facebook/c/h;-><init>(Ljava/lang/Object;)V

    .line 504
    iput-object p2, p0, Lcom/facebook/c/f;->b:Ljava/lang/Class;

    .line 505
    return-void
.end method

.method private static a(Lcom/facebook/c/a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 629
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/facebook/c/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/b/cl;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 631
    invoke-interface {p0}, Lcom/facebook/c/a;->a()Ljava/lang/String;

    .line 632
    const-class v0, Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 633
    const-class v0, Lcom/facebook/c/c;

    invoke-static {v0}, Lcom/facebook/c/d;->a(Ljava/lang/Class;)Lcom/facebook/c/i;

    move-result-object v0

    .line 635
    check-cast p1, Ljava/util/List;

    .line 636
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 637
    invoke-static {}, Lcom/facebook/c/d;->a()Lcom/facebook/c/c;

    move-result-object v2

    .line 638
    invoke-interface {v2}, Lcom/facebook/c/c;->f()V

    .line 639
    invoke-interface {v0, v2}, Lcom/facebook/c/i;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 651
    :cond_1
    :goto_1
    return-object p1

    .line 644
    :cond_2
    invoke-static {}, Lcom/facebook/c/d;->a()Lcom/facebook/c/c;

    move-result-object p1

    .line 645
    invoke-interface {p1}, Lcom/facebook/c/c;->f()V

    goto :goto_1
.end method

.method private a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 694
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    .line 695
    const/4 v1, 0x1

    aget-object v1, p1, v1

    .line 696
    invoke-static {v1}, Lcom/facebook/c/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 698
    :try_start_0
    iget-object v1, p0, Lcom/facebook/c/f;->a:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    const/4 v0, 0x0

    return-object v0

    .line 699
    :catch_0
    move-exception v0

    .line 700
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 514
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 516
    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 517
    invoke-virtual {p0, p2, p3}, Lcom/facebook/c/f;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 526
    :cond_0
    :goto_0
    return-object v4

    .line 518
    :cond_1
    const-class v1, Ljava/util/Map;

    if-ne v0, v1, :cond_12

    .line 519
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/facebook/c/f;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_2
    const-string v1, "containsKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/facebook/c/f;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    aget-object v1, p3, v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    :cond_3
    const-string v1, "containsValue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/facebook/c/f;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    aget-object v4, p3, v3

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v2

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_2

    :cond_6
    const-string v1, "entrySet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/facebook/c/f;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    new-instance v5, Lcom/facebook/c/l;

    invoke-direct {v5, v1, v3}, Lcom/facebook/c/l;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    const-string v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/facebook/c/f;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    aget-object v1, p3, v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    :cond_8
    const-string v1, "isEmpty"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/facebook/c/f;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_9

    :goto_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_0

    :cond_9
    move v2, v3

    goto :goto_4

    :cond_a
    const-string v1, "keySet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/facebook/c/f;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/facebook/c/k;->a(Lorg/json/JSONObject;)Ljava/util/Set;

    move-result-object v4

    goto/16 :goto_0

    :cond_b
    const-string v1, "put"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-direct {p0, p3}, Lcom/facebook/c/f;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    :cond_c
    const-string v1, "putAll"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    aget-object v0, p3, v3

    instance-of v0, v0, Ljava/util/Map;

    if-eqz v0, :cond_d

    aget-object v0, p3, v3

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    :goto_5
    iget-object v0, p0, Lcom/facebook/c/f;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/facebook/c/k;->a(Lorg/json/JSONObject;Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_d
    aget-object v0, p3, v3

    instance-of v0, v0, Lcom/facebook/c/c;

    if-eqz v0, :cond_0

    aget-object v0, p3, v3

    check-cast v0, Lcom/facebook/c/c;

    invoke-interface {v0}, Lcom/facebook/c/c;->c()Ljava/util/Map;

    move-result-object v0

    move-object v1, v0

    goto :goto_5

    :cond_e
    const-string v1, "remove"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v0, p0, Lcom/facebook/c/f;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    aget-object v1, p3, v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_f
    const-string v1, "size"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v0, p0, Lcom/facebook/c/f;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_0

    :cond_10
    const-string v1, "values"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/facebook/c/f;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/facebook/c/k;->b(Lorg/json/JSONObject;)Ljava/util/Collection;

    move-result-object v4

    goto/16 :goto_0

    :cond_11
    invoke-virtual {p0, p2}, Lcom/facebook/c/f;->a(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    .line 520
    :cond_12
    const-class v1, Lcom/facebook/c/c;

    if-ne v0, v1, :cond_1c

    .line 521
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    aget-object v0, p3, v3

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/facebook/c/f;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_13

    move-object v4, p1

    goto/16 :goto_0

    :cond_13
    iget-object v1, p0, Lcom/facebook/c/f;->a:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/facebook/c/d;->a(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/c/c;

    move-result-object v4

    goto/16 :goto_0

    :cond_14
    const-string v1, "getInnerJSONObject"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    check-cast v0, Lcom/facebook/c/f;

    iget-object v4, v0, Lcom/facebook/c/f;->a:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_15
    const-string v1, "asMap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v0, p0, Lcom/facebook/c/f;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/facebook/c/d;->b(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v4

    goto/16 :goto_0

    :cond_16
    const-string v1, "getProperty"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v0, p0, Lcom/facebook/c/f;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    aget-object v1, p3, v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    :cond_17
    const-string v1, "getPropertyAs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v0, p0, Lcom/facebook/c/f;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    aget-object v1, p3, v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    aget-object v0, p3, v2

    check-cast v0, Ljava/lang/Class;

    invoke-static {v1, v0, v4}, Lcom/facebook/c/d;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    :cond_18
    const-string v1, "getPropertyAsList"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v0, p0, Lcom/facebook/c/f;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    aget-object v1, p3, v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    aget-object v0, p3, v2

    check-cast v0, Ljava/lang/Class;

    new-instance v2, Lcom/facebook/c/g;

    invoke-direct {v2, p0, v0}, Lcom/facebook/c/g;-><init>(Lcom/facebook/c/f;Ljava/lang/Class;)V

    const-class v0, Lcom/facebook/c/i;

    invoke-static {v1, v0, v2}, Lcom/facebook/c/d;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    :cond_19
    const-string v1, "setProperty"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-direct {p0, p3}, Lcom/facebook/c/f;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    :cond_1a
    const-string v1, "removeProperty"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/facebook/c/f;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    aget-object v1, p3, v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_1b
    invoke-virtual {p0, p2}, Lcom/facebook/c/f;->a(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    .line 522
    :cond_1c
    const-class v1, Lcom/facebook/c/c;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 523
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v5, v0

    const-class v0, Lcom/facebook/c/m;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/facebook/c/m;

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Lcom/facebook/c/m;->a()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_6
    if-nez v5, :cond_1e

    iget-object v0, p0, Lcom/facebook/c/f;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_21

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    :goto_7
    invoke-static {v1, v2, v0}, Lcom/facebook/c/d;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    :cond_1d
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/c/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_6

    :cond_1e
    if-ne v5, v2, :cond_1f

    const-class v0, Lcom/facebook/c/a;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/facebook/c/a;

    aget-object v2, p3, v3

    invoke-static {v0, v2}, Lcom/facebook/c/f;->a(Lcom/facebook/c/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/c/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/c/f;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    :cond_1f
    invoke-virtual {p0, p2}, Lcom/facebook/c/f;->a(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    .line 526
    :cond_20
    invoke-virtual {p0, p2}, Lcom/facebook/c/f;->a(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    :cond_21
    move-object v0, v4

    goto :goto_7
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 509
    const-string v0, "GraphObject{graphObjectClass=%s, state=%s}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/c/f;->b:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/c/f;->a:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
